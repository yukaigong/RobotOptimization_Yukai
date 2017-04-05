/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * J_torqueCost_LeftStance_terminate.c
 *
 * Code generation for function 'J_torqueCost_LeftStance_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "J_torqueCost_LeftStance.h"
#include "J_torqueCost_LeftStance_terminate.h"
#include "_coder_J_torqueCost_LeftStance_mex.h"
#include "J_torqueCost_LeftStance_data.h"

/* Function Definitions */
void J_torqueCost_LeftStance_atexit(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void J_torqueCost_LeftStance_terminate(void)
{
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (J_torqueCost_LeftStance_terminate.c) */
