#include "cpu/instr.h"

static void instr_execute_2op()
{
    operand_read(&opr_src);
    operand_read(&opr_dest);
    opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
    opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);
    alu_sub(opr_src.val, opr_dest.val, data_size);
}

//3C
make_instr_impl_2op(cmp, i, a, b)
//3D
make_instr_impl_2op(cmp, i, a, v)
//80
make_instr_impl_2op(cmp, i, rm, b)
//81
make_instr_impl_2op(cmp, i, rm, v)
//83
make_instr_impl_2op(cmp, i, rm, bv)
//38
make_instr_impl_2op(cmp, r, rm, b)
//39
make_instr_impl_2op(cmp, r, rm, v)
//3A
make_instr_impl_2op(cmp, rm, r, b)
//3B
make_instr_impl_2op(cmp, rm, r, v)


/*
make_instr_func(cmp_i82rm_v)
{
    int len = 1;
    OPERAND rm, imm;
    rm.data_size = data_size;
    imm.data_size = 8;
    imm.type = OPR_IMM;
    len += modrm_rm(eip + 1, &rm);
    imm.addr = eip + len;
    operand_read(&rm);
    operand_read(&imm);
    alu_sub(rm.val, imm.val, data_size);

    print_asm_2("cmp", "", len + 1, &imm, &rm);
    return len + 1;
}
*/