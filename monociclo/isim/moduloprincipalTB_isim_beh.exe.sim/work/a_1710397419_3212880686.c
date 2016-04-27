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
static const char *ng0 = "C:/Users/Vanessa/Desktop/ArquitecturaComputadores/monociclo/CU.vhd";



static void work_a_1710397419_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(16, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4652);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(17, ng0);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 4654);
    t12 = 1;
    if (6U == 6U)
        goto LAB17;

LAB18:    t12 = 0;

LAB19:    if (t12 == 1)
        goto LAB14;

LAB15:    t16 = (t0 + 1192U);
    t17 = *((char **)t16);
    t16 = (t0 + 4660);
    t19 = 1;
    if (6U == 6U)
        goto LAB23;

LAB24:    t19 = 0;

LAB25:    t8 = t19;

LAB16:    if (t8 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4672);
    t4 = 1;
    if (6U == 6U)
        goto LAB31;

LAB32:    t4 = 0;

LAB33:    if (t4 != 0)
        goto LAB29;

LAB30:
LAB12:    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(18, ng0);
    t23 = (t0 + 4666);
    t25 = (t0 + 2912);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t23, 6U);
    xsi_driver_first_trans_fast_port(t25);
    goto LAB12;

LAB14:    t8 = (unsigned char)1;
    goto LAB16;

LAB17:    t13 = 0;

LAB20:    if (t13 < 6U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t14 = (t10 + t13);
    t15 = (t9 + t13);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB18;

LAB22:    t13 = (t13 + 1);
    goto LAB20;

LAB23:    t20 = 0;

LAB26:    if (t20 < 6U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t21 = (t17 + t20);
    t22 = (t16 + t20);
    if (*((unsigned char *)t21) != *((unsigned char *)t22))
        goto LAB24;

LAB28:    t20 = (t20 + 1);
    goto LAB26;

LAB29:    xsi_set_current_line(20, ng0);
    t9 = (t0 + 4678);
    t11 = (t0 + 2912);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 6U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB12;

LAB31:    t5 = 0;

LAB34:    if (t5 < 6U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB32;

LAB36:    t5 = (t5 + 1);
    goto LAB34;

}


extern void work_a_1710397419_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1710397419_3212880686_p_0};
	xsi_register_didat("work_a_1710397419_3212880686", "isim/moduloprincipalTB_isim_beh.exe.sim/work/a_1710397419_3212880686.didat");
	xsi_register_executes(pe);
}
