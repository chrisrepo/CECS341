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
static const char *ng0 = "E:/CECS 341 Labs/Lab 5/CPU_EU/ALU_Ctl_Test.v";
static unsigned int ng1[] = {39U, 0U};
static int ng2[] = {0, 0};
static const char *ng3 = "Expected result: func b1100";
static const char *ng4 = "Actual Result: %b";



static void Initial_41_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 1444U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);

LAB4:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 828);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1344);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(48, ng0);
    xsi_vlogfile_write(1, 0, 0, ng3, 1, t0);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng4, 2, t0, (char)118, t3, 4);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1344);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(52, ng0);
    xsi_vlog_stop(1);
    goto LAB1;

}


extern void work_m_00000000000550645103_2734773950_init()
{
	static char *pe[] = {(void *)Initial_41_0};
	xsi_register_didat("work_m_00000000000550645103_2734773950", "isim/ALU_Ctl_Test_isim_beh.exe.sim/work/m_00000000000550645103_2734773950.didat");
	xsi_register_executes(pe);
}
