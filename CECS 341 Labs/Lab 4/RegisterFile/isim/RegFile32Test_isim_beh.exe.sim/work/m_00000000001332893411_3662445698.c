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

/* This file is designed for use with ISim build 0xb869381d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/CECS 341 Labs/Lab 4/RegisterFile/RegFile32Test.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static const char *ng3 = "Writing to registers";
static const char *ng4 = "--------------------";
static int ng5[] = {32, 0};
static const char *ng6 = "$%d <- 0x%h";
static const char *ng7 = "Reading from registers";
static const char *ng8 = "----------------------";
static int ng9[] = {2, 0};



static void Always_53_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 1996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1896);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 1288);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1288);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_55_1(char *t0)
{
    char t6[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 2140U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);

LAB4:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2040);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(66, ng0);
    xsi_vlogfile_write(1, 0, 0, ng3, 1, t0);
    xsi_set_current_line(67, ng0);
    xsi_vlogfile_write(1, 0, 0, ng4, 1, t0);
    xsi_set_current_line(69, ng0);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2040);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB7:    xsi_set_current_line(70, ng0);

LAB9:    xsi_set_current_line(71, ng0);
    t13 = (t0 + 2336);
    *((int *)t13) = 1;
    t14 = (t0 + 2168);
    *((char **)t14) = t13;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(72, ng0);

LAB11:    xsi_set_current_line(73, ng0);
    *((int *)t15) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t16 = (t15 + 4);
    *((int *)t16) = 0;
    t17 = (t0 + 1196);
    xsi_vlogvar_assign_value(t17, t15, 0, 0, 32);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 5);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2344);
    *((int *)t2) = 1;
    t3 = (t0 + 2168);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(77, ng0);
    t4 = (t0 + 2040);
    xsi_process_wait(t4, 0LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(77, ng0);
    t5 = (t0 + 1104);
    t7 = (t5 + 36U);
    t13 = *((char **)t7);
    t14 = (t0 + 1196);
    t16 = (t14 + 36U);
    t17 = *((char **)t16);
    xsi_vlogfile_write(1, 0, 0, ng6, 3, t0, (char)118, t13, 5, (char)118, t17, 32);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1472);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB14:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    xsi_vlogfile_write(1, 0, 0, ng7, 1, t0);
    xsi_set_current_line(84, ng0);
    xsi_vlogfile_write(1, 0, 0, ng8, 1, t0);
    xsi_set_current_line(86, ng0);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB15:    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2040);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB16:    xsi_set_current_line(87, ng0);

LAB18:    xsi_set_current_line(88, ng0);
    t13 = (t0 + 2352);
    *((int *)t13) = 1;
    t14 = (t0 + 2168);
    *((char **)t14) = t13;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(89, ng0);

LAB20:    xsi_set_current_line(90, ng0);
    t16 = (t0 + 1472);
    t17 = (t16 + 36U);
    t18 = *((char **)t17);
    t19 = (t0 + 920);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 5);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2040);
    xsi_process_wait(t2, 0LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(91, ng0);
    t3 = (t0 + 920);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    t7 = (t0 + 600U);
    t13 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng6, 3, t0, (char)118, t5, 5, (char)118, t13, 32);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1012);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 5);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2040);
    xsi_process_wait(t2, 0LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 1012);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    t7 = (t0 + 692U);
    t13 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng6, 3, t0, (char)118, t5, 5, (char)118, t13, 32);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1472);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2360);
    *((int *)t2) = 1;
    t3 = (t0 + 2168);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(97, ng0);

LAB24:    xsi_set_current_line(98, ng0);
    t4 = (t0 + 1472);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t13 = (t0 + 920);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 5);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2040);
    xsi_process_wait(t2, 0LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(99, ng0);
    t3 = (t0 + 920);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    t7 = (t0 + 600U);
    t13 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng6, 3, t0, (char)118, t5, 5, (char)118, t13, 32);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1012);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 5);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2040);
    xsi_process_wait(t2, 0LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 1012);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    t7 = (t0 + 692U);
    t13 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng6, 3, t0, (char)118, t5, 5, (char)118, t13, 32);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1472);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB15;

LAB27:    xsi_set_current_line(105, ng0);
    xsi_vlog_stop(1);
    goto LAB1;

}


extern void work_m_00000000001332893411_3662445698_init()
{
	static char *pe[] = {(void *)Always_53_0,(void *)Initial_55_1};
	xsi_register_didat("work_m_00000000001332893411_3662445698", "isim/RegFile32Test_isim_beh.exe.sim/work/m_00000000001332893411_3662445698.didat");
	xsi_register_executes(pe);
}
