/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_J_stateCost_LeftStance_api.c
 *
 * Code generation for function '_coder_J_stateCost_LeftStance_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "J_stateCost_LeftStance.h"
#include "_coder_J_stateCost_LeftStance_api.h"
#include "J_stateCost_LeftStance_data.h"

/* Function Declarations */
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[44];
static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *in2,
  const char_T *identifier))[132];
static real_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[132];
static real_T (*e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[44];
static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *in1, const
  char_T *identifier))[44];
static const mxArray *emlrt_marshallOut(const real_T u[44]);
static real_T (*f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[132];

/* Function Definitions */
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[44]
{
  real_T (*y)[44];
  y = e_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *in2,
  const char_T *identifier))[132]
{
  real_T (*y)[132];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = d_emlrt_marshallIn(sp, emlrtAlias(in2), &thisId);
  emlrtDestroyArray(&in2);
  return y;
}

static real_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId))[132]
{
  real_T (*y)[132];
  y = f_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static real_T (*e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[44]
{
  real_T (*ret)[44];
  static const int32_T dims[2] = { 1, 44 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, dims);
  ret = (real_T (*)[44])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *in1, const
  char_T *identifier))[44]
{
  real_T (*y)[44];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(in1), &thisId);
  emlrtDestroyArray(&in1);
  return y;
}
  static const mxArray *emlrt_marshallOut(const real_T u[44])
{
  const mxArray *y;
  const mxArray *m1;
  static const int32_T iv1[2] = { 0, 0 };

  static const int32_T iv2[2] = { 1, 44 };

  y = NULL;
  m1 = emlrtCreateNumericArray(2, iv1, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m1, (void *)u);
  emlrtSetDimensions((mxArray *)m1, iv2, 2);
  emlrtAssign(&y, m1);
  return y;
}

static real_T (*f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[132]
{
  real_T (*ret)[132];
  static const int32_T dims[2] = { 1, 132 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 2U, dims);
  ret = (real_T (*)[132])mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  void J_stateCost_LeftStance_api(const mxArray * const prhs[2], const mxArray
  *plhs[1])
{
  real_T (*out1)[44];
  real_T (*in1)[44];
  real_T (*in2)[132];
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;
  out1 = (real_T (*)[44])mxMalloc(sizeof(real_T [44]));

  /* Marshall function inputs */
  in1 = emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "in1");
  in2 = c_emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "in2");

  /* Invoke the target function */
  J_stateCost_LeftStance(*in1, *in2, *out1);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(*out1);
}

/* End of code generation (_coder_J_stateCost_LeftStance_api.c) */
