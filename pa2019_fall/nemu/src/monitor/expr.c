#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"
#include <elf.h>

#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

CPU_STATE cpu;

enum
{
    NOTYPE = 256,
    EQ,
    NE,
    AND,
    OR,
    DEREF,
    NEG,
    NUM,
    HEX,
    REG,
    SYMB

    /* TODO: Add more token types */

};

static struct rule
{
    char *regex;
    int token_type;
} rules[] = {

    /* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

    {" +", NOTYPE}, // white space
    {"\\(", '('},
    {"\\)", ')'},
    {"\\*", '*'},
    {"/", '/'},
    {"\\+", '+'},
    {"-", '-'},
    {"==", EQ},
    {"!=", NE},
    {"&&", AND},
    {"\\|\\|", OR},
    {"!", '!'},
    {"[a-zA-Z_]+", SYMB},
    {"0x[0-9a-fA-F]+", HEX},
    {"[0-9]+", NUM},
    {"\\$e[a,b,c,d]x", REG},
    {"\\$e[s,b]p", REG},
    {"\\$eip", REG},
    {"\\$e[s,d]i", REG}
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]))

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex()
{
    int i;
    char error_msg[128];
    int ret;

    for (i = 0; i < NR_REGEX; i++)
    {
        ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
        if (ret != 0)
        {
            regerror(ret, &re[i], error_msg, 128);
            assert(ret != 0);
        }
    }
}

typedef struct token
{
    int type;
    char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e)
{
    int position = 0;
    int i;
    regmatch_t pmatch;

    nr_token = 0;

    while (e[position] != '\0')
    {
        /* Try all rules one by one. */
        for (i = 0; i < NR_REGEX; i++)
        {
            if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0)
            {
                char *substr_start = e + position;
                int substr_len = pmatch.rm_eo;

                //printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
                position += substr_len;

                /* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */

                switch (rules[i].token_type)
                {
                case NOTYPE:
                    break;
                case NUM:
                case HEX:
                case REG:
                case SYMB:
                    for (int i = 0; i < substr_len; i++)
                        tokens[nr_token].str[i] = substr_start[i];
                //printf("%s\n", tokens[nr_token].str);
                default:
                    tokens[nr_token].type = rules[i].token_type;
                    nr_token++;
                    break;
                }
                break;
            }
        }

        if (i == NR_REGEX)
        {
            printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
            return false;
        }
    }

    return true;
}

uint32_t eval(int p, int q, bool *valid);
uint32_t look_up_symtab(char *, bool *);

uint32_t expr(char *e, bool *success)
{
    if (!make_token(e))
    {
        *success = false;
        return 0;
    }
    for (int i = 0; i < nr_token; i++)
    {
        if (tokens[i].type == '*' &&
            (i == 0 || tokens[i - 1].type == '+' || tokens[i - 1].type == '-' || tokens[i - 1].type == '*' || tokens[i - 1].type == '/' ||
            tokens[i - 1].type == EQ || tokens[i - 1].type == NE || tokens[i - 1].type == AND || tokens[i - 1].type == OR ||
            tokens[i - 1].type == '!'))
        {
            tokens[i].type = DEREF;
        }
        if (tokens[i].type == '-' &&
            (i == 0 || tokens[i - 1].type == '+' || tokens[i - 1].type == '-' || tokens[i - 1].type == '*' || tokens[i - 1].type == '/' ||
             tokens[i - 1].type == EQ || tokens[i - 1].type == NE || tokens[i - 1].type == AND || tokens[i - 1].type == OR ||
             tokens[i - 1].type == '!'))
        {
            tokens[i].type = NEG;
        }
    }
    bool valid = true;
    uint32_t res = eval(0, nr_token - 1, &valid);
    if (valid == true)
    {
        *success = true;
        return res;
    }
    else
    {
        *success = false;
        return 0;
    }
}

bool check_parentheses(int p, int q, bool *valid)
{
    bool flag = true;
    if (tokens[p].type != '(' || tokens[q].type != ')')
    {
        flag = false;
    }
    int left = 0;
    int right = 0;
    for (int i = p; i < q; i++)
    {
        if (tokens[i].type == '(')
            left++;
        else if (tokens[i].type == ')')
        {
            if (left > 0)
            {
                left--;
                if (left == 0)
                    flag = false;
            }
            else
            {
                right++;
            }
        }
    }
    if (tokens[q].type == ')')
    {
        if (left > 0)
        {
            left--;
        }
        else
        {
            right++;
        }
    }
    if (left + right == 0)
    {
        *valid = true;
        return flag;
    }
    else
    {
        *valid = false;
        return false;
    }
}

int Precedence(int type)
{
    switch (type)
    {
    case '!':
    case NEG:
    case DEREF:
        return 5;
    case '*':
    case '/':
        return 4;
    case '+':
    case '-':
        return 3;
    case EQ:
    case NE:
        return 2;
    case AND:
        return 1;
    case OR:
        return 0;
    default:
        return 10;
    }
}

int dominant_op(int p, int q)
{
    int min = p;
    int i = p;
    while (i <= q)
    {
        if (tokens[i].type == '(')
        {
            int left = 1;
            int j = 1;
            while (i + j <= q)
            {
                if (tokens[i + j].type == '(')
                    left++;
                else if (tokens[i + j].type == ')')
                {
                    left--;
                    if (left == 0)
                    {
                        i += j + 1;
                        break;
                    }
                }
                j++;
            }
        }
        else if (Precedence(tokens[i].type) <= Precedence(tokens[min].type))
        {
            min = i;
            i++;
        }
        else
        {
            i++;
        }
    }
    return min;
}

uint32_t ValueOfREG(int p)
{
    if (!strcmp(tokens[p].str, "$eax"))
        return cpu.gpr[0].val;
    else if (!strcmp(tokens[p].str, "$ebx"))
        return cpu.gpr[3].val;
    else if (!strcmp(tokens[p].str, "$ebp"))
        return cpu.gpr[5].val;
    else if (!strcmp(tokens[p].str, "$ecx"))
        return cpu.gpr[1].val;
    else if (!strcmp(tokens[p].str, "$edx"))
        return cpu.gpr[2].val;
    else if (!strcmp(tokens[p].str, "$edi"))
        return cpu.gpr[7].val;
    else if (!strcmp(tokens[p].str, "$eip"))
        return cpu.eip;
    else if (!strcmp(tokens[p].str, "$esp"))
        return cpu.gpr[4].val;
    else
        return cpu.gpr[6].val;
}

uint32_t AddrOfSYMB(int p)
{
    bool success = true;
    return look_up_symtab(tokens[p].str, &success);
}

uint32_t eval(int p, int q, bool *valid)
{
    if (valid == false)
        return 0;
    if (p > q)
    {
        valid = false;
        return 0;
    }
    else if (p == q)
    {
        uint32_t num;
        if (tokens[p].type == NUM)
        {
            sscanf(tokens[p].str, "%d", &num);
        }
        else if (tokens[p].type == HEX)
        {
            sscanf(tokens[p].str, "%x", &num);
        }
        else if (tokens[p].type == REG)
        {
            num = ValueOfREG(p);
        }
        else if (tokens[p].type == SYMB)
        {
            num = AddrOfSYMB(p);
        }
        return num;
    }
    else if (check_parentheses(p, q, valid) == true)
    {
        return eval(p + 1, q - 1, valid);
    }
    else if (*valid == true)
    {
        int op = dominant_op(p, q);
        //printf("dominant operator is %d\n", tokens[op].type);
        uint32_t val1 = eval(p, op - 1, valid);
        uint32_t val2 = eval(op + 1, q, valid);
        switch (tokens[op].type)
        {
        case '+':
            return val1 + val2;
        case '-':
            return val1 - val2;
        case '*':
            return val1 * val2;
        case '/':
            return val1 / val2;
        case '!':
            return !val2;
        case EQ:
            return val1 == val2;
        case NE:
            return val1 != val2;
        case AND:
            return val1 && val2;
        case OR:
            return val1 || val2;
        case DEREF:
            printf("DEREF 0x%08x\n", val2);
            return vaddr_read(val2, SREG_DS, 4);
        case NEG:
            return -val2;
        default:
            assert(0);
        }
    }
    else
    {
        return 0;
    }
}