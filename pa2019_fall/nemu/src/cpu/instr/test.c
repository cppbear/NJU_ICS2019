#include "cpu/instr.h"

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    alu_and(opr_src.val, opr_dest.val, data_size);
}

//A8
make_instr_impl_2op (test, i, a, b)
//A9
make_instr_impl_2op (test, i, a, v)
//F6
make_instr_impl_2op (test, i, rm, b)
//F7
make_instr_impl_2op (test, i, rm, v)
//84
make_instr_impl_2op (test, r, rm, b)
//85
make_instr_impl_2op (test, r, rm, v)