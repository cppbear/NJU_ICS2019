#include "cpu/instr.h"

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
    opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);
    opr_dest.val = alu_sub(opr_src.val, opr_dest.val, data_size);
    operand_write(&opr_dest);
}

//2C
make_instr_impl_2op(sub, i, a, b)
//2D
make_instr_impl_2op(sub, i, a, v)
//80
make_instr_impl_2op(sub, i, rm, b)
//81
make_instr_impl_2op(sub, i, rm, v)
//83
make_instr_impl_2op(sub, i, rm, bv)
//28
make_instr_impl_2op(sub, r, rm, b)
//29
make_instr_impl_2op(sub, r, rm, v)
//2A
make_instr_impl_2op(sub, rm, r, b)
//2B
make_instr_impl_2op(sub, rm, r, v)