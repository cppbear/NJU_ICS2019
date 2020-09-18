#ifndef __CACHE_H__
#define __CACHE_H__

#include "nemu.h"

typedef struct
{
    union
    {
        struct 
        {
            uint32_t valid : 1;
            uint32_t tag : 19;
            uint32_t dummy : 12;
        };
        uint32_t val;
    } flag;
    uint8_t block[64];
} CacheLine;

typedef struct
{
    CacheLine Lines[8];
} CacheGroup;

extern CacheGroup L1_dcache[];

void init_cache();

uint32_t cache_read(paddr_t paddr, size_t len, CacheGroup *cache);

void cache_write(paddr_t paddr, size_t len, uint32_t data, CacheGroup *cache);

#endif