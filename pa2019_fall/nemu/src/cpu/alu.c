#include "cpu/cpu.h"

void set_CF_add(uint32_t result, uint32_t src, size_t data_size)
{
	result = sign_ext(result & (0xFFFFFFFF >> (32 - data_size)), data_size);
	src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	cpu.eflags.CF = result < src;
}
void set_CF_adc(uint32_t result, uint32_t src, size_t data_size)
{
	result = sign_ext(result & (0xFFFFFFFF >> (32 - data_size)), data_size);
	src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	if (cpu.eflags.CF == 0)
		cpu.eflags.CF = result < src;
	else
		cpu.eflags.CF = result <= src;
}
void set_CF_sub(uint32_t dest, uint32_t src, size_t data_size)
{
	dest = sign_ext(dest & (0xFFFFFFFF >> (32 - data_size)), data_size);
	src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	cpu.eflags.CF = dest < src;
}
void set_CF_sbb(uint32_t dest, uint32_t src, size_t data_size)
{
	dest = sign_ext(dest & (0xFFFFFFFF >> (32 - data_size)), data_size);
	src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	if (cpu.eflags.CF == 0)
		cpu.eflags.CF = dest < src;
	else
		cpu.eflags.CF = dest <= src;
}
void set_CF_OF_mul(uint64_t result, size_t data_size)
{
	result = result >> data_size;
	cpu.eflags.CF = cpu.eflags.OF = result > 0;
}
void set_ZF(uint32_t result, size_t data_size)
{
	result = result & (0xFFFFFFFF >> (32 - data_size));
	cpu.eflags.ZF = (result == 0);
}
void set_SF(uint32_t result, size_t data_size)
{
	result = sign_ext(result & (0xFFFFFFFF >> (32 - data_size)), data_size);
	cpu.eflags.SF = sign(result);
}
void set_PF(uint32_t result)
{
	result = result & 0x0FF;
	int count = 0;
	while (result > 0)
	{
		if (result % 2 == 1)
			count++;
		result = result / 2;
	}
	if (count % 2 == 1)
		cpu.eflags.PF = 0;
	else
		cpu.eflags.PF = 1;
}
void set_OF_add(uint32_t result, uint32_t src, uint32_t dest, size_t data_size)
{
	switch (data_size)
	{
	case 8:
		result = sign_ext(result & 0xFF, 8);
		src = sign_ext(src & 0xFF, 8);
		dest = sign_ext(dest & 0xFF, 8);
		break;
	case 16:
		result = sign_ext(result & 0xFFFF, 16);
		src = sign_ext(src & 0xFFFF, 16);
		dest = sign_ext(dest & 0xFFFF, 16);
		break;
	default:
		break; // do nothing
	}
	if (sign(src) == sign(dest))
	{
		if (sign(src) != sign(result))
			cpu.eflags.OF = 1;
		else
			cpu.eflags.OF = 0;
	}
	else
	{
		cpu.eflags.OF = 0;
	}
}
void set_OF_sub(uint32_t result, uint32_t src, uint32_t dest, size_t data_size)
{
	switch (data_size)
	{
	case 8:
		result = sign_ext(result & 0xFF, 8);
		src = sign_ext(src & 0xFF, 8);
		dest = sign_ext(dest & 0xFF, 8);
		break;
	case 16:
		result = sign_ext(result & 0xFFFF, 16);
		src = sign_ext(src & 0xFFFF, 16);
		dest = sign_ext(dest & 0xFFFF, 16);
		break;
	default:
		break; // do nothing
	}
	if (sign(src) != sign(dest))
	{
		if (sign(src) == sign(result))
			cpu.eflags.OF = 1;
		else
			cpu.eflags.OF = 0;
	}
	else
	{
		cpu.eflags.OF = 0;
	}
}

uint32_t alu_add(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	res = dest + src;
	set_CF_add(res, src, data_size);
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	set_OF_add(res, src, dest, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_adc(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	res = dest + src + cpu.eflags.CF;
	set_CF_adc(res, src, data_size);
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	set_OF_add(res, src, dest, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_sub(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	uint32_t temp = (src ^ 0xFFFFFFFF) + 1;
	res = dest + temp;
	set_CF_sub(dest, src, data_size);
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	set_OF_sub(res, src, dest, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_sbb(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	uint32_t temp = (src ^ 0xFFFFFFFF) + 1;
	res = dest + temp - cpu.eflags.CF;
	set_CF_sbb(dest, src, data_size);
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	set_OF_sub(res, src, dest, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size)
{
	uint64_t res = 0;
	src = src & (0xFFFFFFFF >> (32 - data_size));
	dest = dest & (0xFFFFFFFF >> (32 - data_size));
	res = (uint64_t)dest * (uint64_t)src;
	set_CF_OF_mul(res, data_size);
	//set_PF(res);
	//set_ZF(res, data_size);
	//set_SF(res, data_size);
	return res & 0xFFFFFFFFFFFFFFFF;
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size)
{
	int64_t res = 0;
	src = sign_ext_64(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	dest = sign_ext_64(dest & (0xFFFFFFFF >> (32 - data_size)), data_size);
	res = (int64_t)dest * (int64_t)src;
	//set_PF(res);
	//set_ZF(res, data_size);
	//set_SF(res, data_size);
	return res & 0xFFFFFFFFFFFFFFFF;
}

// need to implement alu_mod before testing
uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size)
{
	uint32_t res = 0;
	src = src & (0xFFFFFFFFFFFFFFFF >> (64 - data_size));
	dest = dest & (0xFFFFFFFFFFFFFFFF >> (64 - data_size));
	if (src == 0)
		assert(0);
	else
		res = dest / src;
	//set_PF(res);
	//set_ZF(res, data_size);
	//set_SF(res, data_size);
	return res & 0xFFFFFFFF;
}

// need to implement alu_imod before testing
int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size)
{
	int32_t res = 0;
	src = sign_ext_64(src & (0xFFFFFFFFFFFFFFFF >> (64 - data_size)), data_size);
    dest = sign_ext_64(dest & (0xFFFFFFFFFFFFFFFF >> (64 - data_size)), data_size);
	if (src == 0)
		assert(0);
	else
		res = dest / src;
	//set_PF(res);
	//set_ZF(res, data_size);
	//set_SF(res, data_size);
	return res & 0xFFFFFFFF;
}

uint32_t alu_mod(uint64_t src, uint64_t dest)
{
	uint32_t res = 0;
	if (src == 0)
		assert(0);
	else
		res = dest % src;
	//set_PF(res);
	//set_ZF(res, data_size);
	//set_SF(res, data_size);
	return res & 0xFFFFFFFF;
}

int32_t alu_imod(int64_t src, int64_t dest)
{
	int32_t res = 0;
	if (src == 0)
		assert(0);
	else
		res = dest % src;
	//set_PF(res);
	//set_ZF(res, data_size);
	//set_SF(res, data_size);
	return res & 0xFFFFFFFF;
}

uint32_t alu_and(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	res = dest & src;
	cpu.eflags.CF = 0;
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	cpu.eflags.OF = 0;
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_xor(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	res = dest ^ src;
	cpu.eflags.CF = 0;
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	cpu.eflags.OF = 0;
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_or(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	res = dest | src;
	cpu.eflags.CF = 0;
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	cpu.eflags.OF = 0;
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	if (src == 0)
		return dest & (0xFFFFFFFF >> (32 - data_size));
	uint32_t temp = dest << (src - 1);
	res = temp << 1;
	temp = sign_ext(temp & (0xFFFFFFFF >> (32 - data_size)), data_size);
	cpu.eflags.CF = sign(temp);
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	cpu.eflags.OF = 0;
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	if (src == 0)
		return dest & (0xFFFFFFFF >> (32 - data_size));
	dest = dest & (0xFFFFFFFF >> (32 - data_size));
	uint32_t temp = dest >> (src - 1);
	res = temp >> 1;
	temp = temp & 1;
	cpu.eflags.CF = temp;
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	cpu.eflags.OF = 0;
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	if (src == 0)
		return dest & (0xFFFFFFFF >> (32 - data_size));
	dest = dest & (0xFFFFFFFF >> (32 - data_size));
	switch (data_size)
	{
	case 32:
	{
		int32_t temp = (int32_t)dest >> (src - 1);
		res = temp >> 1;
		temp = temp & 1;
		cpu.eflags.CF = temp;
		break;
	}
	case 16:
	{
		int16_t temp = (int16_t)dest >> (src - 1);
		res = temp >> 1;
		temp = temp & 1;
		cpu.eflags.CF = temp;
		break;
	}
	case 8:
	{
		int8_t temp = (int8_t)dest >> (src - 1);
		res = temp >> 1;
		temp = temp & 1;
		cpu.eflags.CF = temp;
		break;
	}
	default:
		break;
	}
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	cpu.eflags.OF = 0;
	return res & (0xFFFFFFFF >> (32 - data_size));
}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size)
{
	uint32_t res = 0;
	if (src == 0)
		return dest & (0xFFFFFFFF >> (32 - data_size));
	uint32_t temp = dest << (src - 1);
	res = temp << 1;
	temp = sign_ext(temp & (0xFFFFFFFF >> (32 - data_size)), data_size);
	cpu.eflags.CF = sign(temp);
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	cpu.eflags.OF = 0;
	return res & (0xFFFFFFFF >> (32 - data_size));
}
