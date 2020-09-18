#include "cpu/instr.h"

//C3
make_instr_func(ret_near)
{
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.sreg = SREG_DS;
    mem.addr = cpu.gpr[4].val;
    operand_read(&mem);

    cpu.gpr[4].val += data_size / 8;

    //int offset = sign_ext(rel.val, data_size);

    print_asm_0("ret", "", 1);
    cpu.eip = mem.val;

    return 0;
}
//C2
make_instr_func(ret_near_imm16)
{
    OPERAND rel;
    rel.type = OPR_IMM;
    rel.sreg = SREG_DS;
    //rel.data_size = data_size;
    rel.data_size = 16;
    rel.addr = eip + 1;

    operand_read(&rel);

    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.sreg = SREG_DS;
    mem.addr = cpu.gpr[4].val;
    operand_read(&mem);

    cpu.gpr[4].val += data_size / 8;

    //int offset = sign_ext(rel.val, data_size);

    print_asm_1("ret", "", 1 + data_size / 8, &rel);
    cpu.eip = mem.val;
    cpu.gpr[4].val += rel.val;

    return 0;
}