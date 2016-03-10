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

/* This file is designed for use with ISim build 0x7dea747 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/CECS 341 Labs/Lab 3/Lab3Xilinx/ALU_Control.v";
static unsigned int ng1[] = {32U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {34U, 0U};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {36U, 0U};
static unsigned int ng6[] = {0U, 0U};
static unsigned int ng7[] = {37U, 0U};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {42U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {39U, 0U};
static unsigned int ng12[] = {12U, 0U};
static unsigned int ng13[] = {63U, 63U};



static void Always_26_0(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB19;

LAB20:
LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(30, ng0);

LAB22:    xsi_set_current_line(31, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 4, 0LL);
    goto LAB21;

LAB9:    xsi_set_current_line(34, ng0);

LAB23:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB21;

LAB11:    xsi_set_current_line(38, ng0);

LAB24:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB21;

LAB13:    xsi_set_current_line(42, ng0);

LAB25:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB21;

LAB15:    xsi_set_current_line(46, ng0);

LAB26:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB21;

LAB17:    xsi_set_current_line(50, ng0);

LAB27:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB21;

LAB19:    xsi_set_current_line(54, ng0);

LAB28:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng6)));
    memset(t9, 0, 8);
    t7 = (t4 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB32;

LAB29:    if (t19 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t9) = 1;

LAB32:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB33;

LAB34:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB35:    goto LAB21;

LAB31:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB32;

LAB33:    xsi_set_current_line(56, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 4, 0LL);
    goto LAB35;

}


extern void work_m_00000000000038444649_3148384703_init()
{
	static char *pe[] = {(void *)Always_26_0};
	xsi_register_didat("work_m_00000000000038444649_3148384703", "isim/ALU_Control_isim_beh.exe.sim/work/m_00000000000038444649_3148384703.didat");
	xsi_register_executes(pe);
}
