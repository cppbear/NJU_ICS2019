#include "cpu/instr.h"

static void instr_execute_1op()
{
    operand_read(&opr_src);
//OF
    switch (data_size)
    {
    case 8:
        if (opr_src.val == 0x7f)
            cpu.eflags.OF = 1;
        break;
    case 16:
        if (opr_src.val == 0x7fff)
            cpu.eflags.OF = 1;
        break;
    case 32:
        if (opr_src.val == 0x7fffffff)
            cpu.eflags.OF = 1;
        break;
    }
    opr_src.val += 1;
//ZF
    if (opr_src.val == 0)
        cpu.eflags.ZF = 0;
    else
    {
        cpu.eflags.ZF = 1;
    }
//SF
    if (sign(sign_ext(opr_src.val, data_size)) == 1)
        cpu.eflags.SF = 1;
    else
        cpu.eflags.SF = 0;
//PF
    int temp = opr_src.val & 0xFF;
    int count = 0;
    while (temp > 0)
    {
        if (temp % 2 == 1)
            count++;
        temp = temp / 2;
    }
    if (count % 2 == 1)
        cpu.eflags.PF = 0;
    else
        cpu.eflags.PF = 1;

    operand_write(&opr_src);
}

//FE
make_instr_impl_1op(inc, rm, b)
//FF
make_instr_impl_1op(inc, rm, v)
//40+r
make_instr_impl_1op(inc, r, v)