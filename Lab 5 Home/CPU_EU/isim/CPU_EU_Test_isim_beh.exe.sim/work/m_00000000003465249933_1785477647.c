/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Christopher/Desktop/CECS 341 Labs/Lab 1/Lab1_Mux2to1_32bit/Mux2to1_32bit.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {4294967295U, 4294967295U};



static void Always_12_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(12, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(13, ng0);

LAB5:    xsi_set_current_line(14, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 1);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 1);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB12:
LAB11:    xsi_set_current_line(17, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(15, ng0);
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    t7 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 32, 0LL);
    goto LAB13;

LAB9:    xsi_set_current_line(16, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    goto LAB13;

}


extern void work_m_00000000003465249933_1785477647_init()
{
	static char *pe[] = {(void *)Always_12_0};
	xsi_register_didat("work_m_00000000003465249933_1785477647", "isim/CPU_EU_Test_isim_beh.exe.sim/work/m_00000000003465249933_1785477647.didat");
	xsi_register_executes(pe);
}
