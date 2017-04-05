/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * J_torqueCost_LeftStance_initialize.c
 *
 * Code generation for function 'J_torqueCost_LeftStance_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "J_torqueCost_LeftStance.h"
#include "J_torqueCost_LeftStance_initialize.h"
#include "_coder_J_torqueCost_LeftStance_mex.h"
#include "J_torqueCost_LeftStance_data.h"

/* Function Definitions */
void J_torqueCost_LeftStance_initialize(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  mexFunctionCreateRootTLS();
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 0U, 0);
  emlrtEnterRtStackR2012b(&st);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (J_torqueCost_LeftStance_initialize.c) */
