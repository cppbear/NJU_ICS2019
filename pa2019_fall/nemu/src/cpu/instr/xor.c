#include "cpu/instr.h"

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    opr_dest.val = alu_xor(opr_src.val, opr_dest.val, data_size);
    operand_write(&opr_dest);
}

//34
make_instr_impl_2op(xor, i, a, b)
//35
make_instr_impl_2op(xor, i, a, v)
//80
make_instr_impl_2op(xor, i, rm, b)
//81
make_instr_impl_2op(xor, i, rm, v)
//83
make_instr_impl_2op(xor, i, rm, bv)
//30
make_instr_impl_2op(xor, r, rm, b)
//31
make_instr_impl_2op(xor, r, rm, v)
//32
make_instr_impl_2op(xor, rm, r, b)
//33
make_instr_impl_2op(xor, rm, r, v)