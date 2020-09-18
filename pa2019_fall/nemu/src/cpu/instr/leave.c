#include "cpu/instr.h"

make_instr_func(leave)
{
    cpu.gpr[4].val = cpu.gpr[5].val;

    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.sreg = SREG_DS;
    mem.addr = cpu.gpr[4].val;
    operand_read(&mem);

    cpu.gpr[4].val += 4;

    //int offset = sign_ext(rel.val, data_size);

    print_asm_0("leave", "", 1);
    cpu.gpr[5].val = mem.val;

    return 1;
}