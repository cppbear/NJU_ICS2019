#include "cpu/instr.h"

make_instr_func(lea)
{
    int len = 1;
    OPERAND reg, mem;
    reg.data_size = data_size;
    mem.data_size = 32;
    len += modrm_r_rm(eip + 1, &reg, &mem);

    //operand_read(&reg);
    //operand_read(&mem);
    reg.val = mem.addr;
    operand_write(&reg);

    print_asm_2("lea", "l", len, &mem, &reg);

    return len;
}