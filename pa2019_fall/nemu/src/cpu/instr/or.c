#include "cpu/instr.h"

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    opr_dest.val = alu_or(opr_src.val, opr_dest.val, data_size);
    operand_write(&opr_dest);
}

//0C
make_instr_impl_2op(or, i, a, b)
//0D
make_instr_impl_2op(or, i, a, v)
//80
make_instr_impl_2op(or, i, rm, b)
//81
make_instr_impl_2op(or, i, rm, v)
//83
make_instr_impl_2op(or, i, rm, bv)
//08
make_instr_impl_2op(or, r, rm, b)
//09
make_instr_impl_2op(or, r, rm, v)
//0A
make_instr_impl_2op(or, rm, r, b)
//0B
make_instr_impl_2op(or, rm, r, v)