#include "cpu/instr.h"

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
    opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);
    opr_dest.val = alu_sbb(opr_src.val, opr_dest.val, data_size);
    operand_write(&opr_dest);
}

//1C
make_instr_impl_2op(sbb, i, a, b)
//1D
make_instr_impl_2op(sbb, i, a, v)
//80
make_instr_impl_2op(sbb, i, rm, b)
//81
make_instr_impl_2op(sbb, i, rm, v)
//83
make_instr_impl_2op(sbb, i, rm, bv)
//18
make_instr_impl_2op(sbb, r, rm, b)
//19
make_instr_impl_2op(sbb, r, rm, v)
//1A
make_instr_impl_2op(sbb, rm, r, b)
//1B
make_instr_impl_2op(sbb, rm, r, v)