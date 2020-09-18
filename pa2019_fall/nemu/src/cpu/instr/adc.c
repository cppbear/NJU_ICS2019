#include "cpu/instr.h"

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
    opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);
    opr_dest.val = alu_adc(opr_src.val, opr_dest.val, data_size);
    operand_write(&opr_dest);
}

//14
make_instr_impl_2op(adc, i, a, b)
//15
make_instr_impl_2op(adc, i, a, v)
//80
make_instr_impl_2op(adc, i, rm, b)
//81
make_instr_impl_2op(adc, i, rm, v)
//83
make_instr_impl_2op(adc, i, rm, bv)
//10
make_instr_impl_2op(adc, r, rm, b)
//11
make_instr_impl_2op(adc, r, rm, v)
//12
make_instr_impl_2op(adc, rm, r, b)
//13
make_instr_impl_2op(adc, rm, r, v)