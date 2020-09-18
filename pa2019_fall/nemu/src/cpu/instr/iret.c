#include "cpu/instr.h"

make_instr_func(iret)
{
    cpu.eip = vaddr_read(cpu.esp, SREG_SS, 4);
    cpu.esp += 4;
    cpu.cs.val = vaddr_read(cpu.esp, SREG_SS, 2);
    cpu.esp += 4;
    cpu.eflags.val = vaddr_read(cpu.esp, SREG_SS, 4);
    cpu.esp += 4;
    print_asm_0("iret", "", 1);
    return 0;
}