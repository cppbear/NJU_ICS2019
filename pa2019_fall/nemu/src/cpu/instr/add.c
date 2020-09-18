#include "cpu/instr.h"

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
    opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);
    opr_dest.val = alu_add(opr_src.val, opr_dest.val, data_size);
    operand_write(&opr_dest);
}

//04
make_instr_impl_2op(add, i, a, b)
//05
make_instr_impl_2op(add, i, a, v)
//80
make_instr_impl_2op(add, i, rm, b)
//81
make_instr_impl_2op(add, i, rm, v)
//83
make_instr_impl_2op(add, i, rm, bv)
//00
make_instr_impl_2op(add, r, rm, b)
//01
make_instr_impl_2op(add, r, rm, v)
//02
make_instr_impl_2op(add, rm, r, b)
//03
make_instr_impl_2op(add, rm, r, v)