#include "cpu/instr.h"

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
    opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);
    opr_dest.val = alu_and(opr_src.val, opr_dest.val, data_size);
    operand_write(&opr_dest);
}

//24
make_instr_impl_2op(and, i, a, b)
//25
make_instr_impl_2op(and, i, a, v)
//80
make_instr_impl_2op(and, i, rm, b)
//81
make_instr_impl_2op(and, i, rm, v)
//83
make_instr_impl_2op(and, i, rm, bv)
//20
make_instr_impl_2op(and, r, rm, b)
//21
make_instr_impl_2op(and, r, rm, v)
//22
make_instr_impl_2op(and, rm, r, b)
//23
make_instr_impl_2op(and, rm, r, v)
