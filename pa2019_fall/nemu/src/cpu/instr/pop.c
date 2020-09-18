#include "cpu/instr.h"

static void instr_execute_1op()
{
    operand_read(&opr_src);
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.sreg = SREG_DS;
    mem.addr = cpu.gpr[4].val;
    operand_read(&mem);
    opr_src.val = mem.val;
    operand_write(&opr_src);
    cpu.gpr[4].val += data_size / 8;
}

//8F
make_instr_impl_1op(pop, rm, v)
//58+r
make_instr_impl_1op(pop, r, v)
//61
make_instr_func(popa)
{
    opr_src.data_size = 32;
    opr_src.type = OPR_MEM;
    opr_src.sreg = SREG_DS;

    for (int i = 7; i >= 0; i--)
    {
        if (i != 4)
        {
            opr_src.addr = cpu.esp;
            operand_read(&opr_src);
            cpu.gpr[i].val = opr_src.val;
        }
        cpu.esp += 4;
    }

    print_asm_0("popa", "", 1);

    return 1;
}