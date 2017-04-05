/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_J_stateCost_LeftStance_mex.c
 *
 * Code generation for function '_coder_J_stateCost_LeftStance_mex'
 *
 */

/* Include files */
#include "J_stateCost_LeftStance.h"
#include "_coder_J_stateCost_LeftStance_mex.h"
#include "J_stateCost_LeftStance_terminate.h"
#include "_coder_J_stateCost_LeftStance_api.h"
#include "J_stateCost_LeftStance_initialize.h"
#include "J_stateCost_LeftStance_data.h"

/* Function Declarations */
static void c_J_stateCost_LeftStance_mexFun(int32_T nlhs, mxArray *plhs[1],
  int32_T nrhs, const mxArray *prhs[2]);

/* Function Definitions */
static void c_J_stateCost_LeftStance_mexFun(int32_T nlhs, mxArray *plhs[1],
  int32_T nrhs, const mxArray *prhs[2])
{
  int32_T n;
  const mxArray *inputs[2];
  const mxArray *outputs[1];
  int32_T b_nlhs;
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 2) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 2, 4,
                        22, "J_stateCost_LeftStance");
  }

  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 22,
                        "J_stateCost_LeftStance");
  }

  /* Temporary copy for mex inputs. */
  for (n = 0; n < nrhs; n++) {
    inputs[n] = prhs[n];
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(&st);
    }
  }

  /* Call the function. */
  J_stateCost_LeftStance_api(inputs, outputs);

  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }

  emlrtReturnArrays(b_nlhs, plhs, outputs);

  /* Module termination. */
  J_stateCost_LeftStance_terminate();
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  mexAtExit(J_stateCost_LeftStance_atexit);

  /* Initialize the memory manager. */
  /* Module initialization. */
  J_stateCost_LeftStance_initialize();

  /* Dispatch the entry-point. */
  c_J_stateCost_LeftStance_mexFun(nlhs, plhs, nrhs, prhs);
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_J_stateCost_LeftStance_mex.c) */
