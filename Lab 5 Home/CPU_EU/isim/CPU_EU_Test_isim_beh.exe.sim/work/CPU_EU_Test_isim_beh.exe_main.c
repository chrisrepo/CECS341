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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003465249933_2392487284_init();
    work_m_00000000003465249933_1785477647_init();
    work_m_00000000000124112270_1752074898_init();
    work_m_00000000000086637181_1733863084_init();
    work_m_00000000001938774617_3148384703_init();
    work_m_00000000001226683268_0886308060_init();
    work_m_00000000001577551707_1790630962_init();
    work_m_00000000000886966244_3362131487_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000886966244_3362131487");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
