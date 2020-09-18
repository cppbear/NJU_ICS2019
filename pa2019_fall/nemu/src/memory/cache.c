#include "nemu.h"
#include "memory/cache.h"
#include "memory/memory.h"
#include <memory.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

CacheGroup L1_dcache[128];

void init_cache()
{
    for (int i = 0; i < 128; i++)
    {
        for (int j = 0; j < 8; j++)
            L1_dcache[i].Lines[j].flag.valid = 0;
    }
}

uint32_t cache_read(paddr_t paddr, size_t len, CacheGroup *cache)
{
    uint32_t ret;
    uint32_t tag_ = (paddr >> 13) & 0x7ffff;
    uint32_t group_num = (paddr >> 6) & 0x7f;
    uint32_t offset = paddr & 0x3f;
    bool hit = false;
    for (int i = 0; i < 8; i++)
    {
        if (cache[group_num].Lines[i].flag.tag == tag_)
        {
            if (cache[group_num].Lines[i].flag.valid)
            {
                if (offset + len <= 64)
                    memcpy(&ret, &cache[group_num].Lines[i].block[offset], len);
                else
                {
                    uint32_t temp1 = 0, temp2 = 0;
                    memcpy(&temp1, &cache[group_num].Lines[i].block[offset], 64 - offset);
                    temp2 = cache_read(paddr + 64 - offset, offset + len - 64, cache);
                    temp2 <<= 8 * (64 - offset);
                    ret = temp1 | temp2;
                }
                hit = true;
            }
            break;
        }
    }
    if (!hit)
    {
        memcpy(&ret, hw_mem + paddr, len);
        int j;
        for (j = 0; j < 8; j++)
        {
            if (!cache[group_num].Lines[j].flag.valid)
            {
                cache[group_num].Lines[j].flag.valid = 1;
                cache[group_num].Lines[j].flag.tag = tag_;
                memcpy(cache[group_num].Lines[j].block, hw_mem + paddr - offset, 64);
                break;
            }
        }
        if (j == 8)
        {
            srand((unsigned)time(0));
            j = rand() % 8;
            cache[group_num].Lines[j].flag.valid = 1;
            cache[group_num].Lines[j].flag.tag = tag_;
            memcpy(cache[group_num].Lines[j].block, hw_mem + paddr - offset, 64);
        }
    }
    return ret;
}

void cache_write(paddr_t paddr, size_t len, uint32_t data, CacheGroup *cache)
{
    memcpy(hw_mem + paddr, &data, len);
    uint32_t tag_ = (paddr >> 13) & 0x7ffff;
    uint32_t group_num = (paddr >> 6) & 0x7f;
    uint32_t offset = paddr & 0x3f;
    for (int i = 0; i < 8; i++)
    {
        if (cache[group_num].Lines[i].flag.tag == tag_ && cache[group_num].Lines[i].flag.valid)
        {
            if (offset + len <= 64)
                memcpy(&cache[group_num].Lines[i].block[offset], &data, len);
            else
            {
                cache_write(paddr, 64 - offset, data, cache);
                cache_write(paddr + 64 - offset, len + offset - 64, data >> (8 * (64 - offset)), cache);
            }
            break;
        }
    }
}