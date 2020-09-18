#include "cpu/instr.h"

static void instr_execute_1op()
{
    operand_read(&opr_src);
    cpu.gpr[4].val -= data_size / 8;
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    if (opr_src.data_size == 8)
        opr_src.val = sign_ext(opr_src.val, 8);
    mem.val = opr_src.val;
    mem.sreg = SREG_DS;
    mem.addr = cpu.gpr[4].val;
    
    operand_write(&mem);
}

//FF
make_instr_impl_1op(push, rm, v)
//50+r
make_instr_impl_1op(push, r, v)
//6A
make_instr_impl_1op(push, i, b)
//68
make_instr_impl_1op(push, i, v)

//60
make_instr_func(pusha)
{
    uint32_t temp = cpu.esp;
    opr_dest.data_size = 32;
    opr_dest.type = OPR_MEM;
    opr_dest.sreg = SREG_DS;

    for (int i = 0; i < 8; i++)
    {
        temp -= data_size >> 3;
        opr_dest.addr = temp;
        opr_dest.val = cpu.gpr[i].val;
        operand_write(&opr_dest);
    }
    cpu.esp = temp;

    print_asm_0("pusha", "", 1);

    return 1;
}