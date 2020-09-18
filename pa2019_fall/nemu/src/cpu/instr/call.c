#include "cpu/instr.h"

make_instr_func(call_near)
{
    OPERAND rel;
    rel.type = OPR_IMM;
    rel.sreg = SREG_CS;
    rel.data_size = data_size;
    rel.addr = eip + 1;
    operand_read(&rel);
    
    cpu.gpr[4].val -= data_size / 8;
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.val = cpu.eip + 1 + data_size / 8;
    mem.sreg = SREG_DS;
    mem.addr = cpu.gpr[4].val;
    operand_write(&mem);

    int offset = sign_ext(rel.val, data_size);

    print_asm_1("call", "", 1 + data_size / 8, &rel);
    cpu.eip += offset;

    return 1 + data_size / 8;
}
//FF
make_instr_func(call_near_indirect)
{
    int len = 1;
    OPERAND rm;
    rm.data_size = data_size;
    len += modrm_rm(eip + 1, &rm);
    operand_read(&rm);

    cpu.gpr[4].val -= data_size / 8;
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    //mem.val = cpu.eip + 1 + data_size / 8;
    mem.val = cpu.eip + len;
    mem.sreg = SREG_DS;
    mem.addr = cpu.gpr[4].val;
    operand_write(&mem);

    if (data_size == 16)
        rm.val &= 0xFFFF;

    //int offset = sign_ext(rel.val, data_size);

    print_asm_1("call", "", 1 + data_size / 8, &rm);
    cpu.eip = rm.val;

    return 0;
}