#include "cpu/instr.h"

//E9
make_instr_func(jmp_near)
{
        OPERAND rel;
        rel.type = OPR_IMM;
        rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

        int offset = sign_ext(rel.val, data_size);
        // thank Ting Xu from CS'17 for finding this bug
        print_asm_1("jmp", "", 1 + data_size / 8, &rel);

        cpu.eip += offset;

        return 1 + data_size / 8;
}
//EB
make_instr_func(jmp_short)
{
        OPERAND rel;
        rel.type = OPR_IMM;
        rel.sreg = SREG_CS;
        rel.data_size = 8;
        rel.addr = eip + 1;

        operand_read(&rel);

        int offset = sign_ext(rel.val, 8);
        // thank Ting Xu from CS'17 for finding this bug
        print_asm_1("jmp", "", 2, &rel);

        cpu.eip += offset;

        return 2;
}
//FF
make_instr_func(jmp_near_indirect)
{
        OPERAND rm;

        rm.data_size = data_size;
        modrm_rm(eip + 1, &rm);

        operand_read(&rm);

        if (data_size == 16)
            rm.val &= 0xFFFF;
        print_asm_1("jmp", "", 1 + data_size / 8, &rm);

        cpu.eip = rm.val;

        return 0;
}

make_instr_func(jmp_far_imm)
{
	OPERAND rel;
	rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
	rel.data_size = 32;
	rel.addr = eip + 1;
	operand_read(&rel);
	print_asm_1("jmp", "", 7, &rel);
	if (data_size == 16)
		cpu.eip = rel.val & 0xFFFF;
	else
		cpu.eip = rel.val;
	cpu.cs.val = instr_fetch(eip + 5, 2);
	load_sreg(1);
	return 0;
}