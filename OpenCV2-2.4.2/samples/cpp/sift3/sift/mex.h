/*lt from:	../include/copyright.h
 *				mex_typedefs.h
 *				fmexapi.c
 *				globals.c
 *				mexapi.c
 *				mexapiv4.c
 *				mexcbk.c
 *				mexintrf.c
 *				modver/modver.c
 */

#ifndef mex_h
#define mex_h


/* $Revision: 1.3 $ */
/*
 * Copyright (c) 1984-2000 The MathWorks, Inc.
 * All Rights Reserved.
 */



/* $Revision: 1.4 $ */
#ifndef mex_typedefs_h
#define mex_typedefs_h
typedef struct impl_info_tag *MEX_impl_info;

#include "matrix.h"

typedef struct mexGlobalTableEntry_Tag
{
    const char *name;             /* The name of the global */
    mxArray    **variable;        /* A pointer to the variable */ 
} mexGlobalTableEntry, *mexGlobalTable;

typedef struct mexFunctionTableEntry_tag {
  const char *  name;
  mxFunctionPtr f;
  int           nargin;
  int           nargout;
  struct _mexLocalFunctionTable *local_function_table;
} mexFunctionTableEntry, *mexFunctionTable;

typedef struct _mexLocalFunctionTable {
  size_t           length;
  mexFunctionTable entries;
} _mexLocalFunctionTable, *mexLocalFunctionTable;

typedef struct {
  void (*initialize)(void);
  void (*terminate)(void);
} _mexInitTermTableEntry, *mexInitTermTableEntry;

#define MEX_INFORMATION_VERSION 1

typedef struct {
  int                   version;
  int                   file_function_table_length;
  mexFunctionTable      file_function_table;
  int                   global_variable_table_length;
  mexGlobalTable        global_variable_table;
  int                   npaths;
  const char **         paths;
  int                   init_term_table_length;
  mexInitTermTableEntry init_term_table;
} _mex_information, *mex_information;

typedef mex_information(*fn_mex_file)(void);

typedef void (*fn_clean_up_after_error)(void);
typedef const char *(*fn_simple_function_to_string)(mxFunctionPtr f);

typedef fn_clean_up_after_error fn_mex_enter_mex_library;
typedef fn_clean_up_after_error fn_mex_exit_mex_library;

#endif

#ifdef __cplusplus
    extern "C" {
#endif


/*
 * This header file "mex.h" declares all the types, macros and
 * functions necessary to interface mex files with the current
 * version of MATLAB.  See the release notes for information on 
 * supporting syntax from earlier versions.
 */  
#include "matrix.h"

#include <stdio.h>

#if defined(applec)
/* MATLAB is compiled with Metrowerks CodeWarrior C.  
   File I/O functions in MPW SC MEX-files are mapped back to MATLAB
   to avoid Data-to-Code Reference link errors from IntEnv.o.
   So, the macros defined in SC's stdio.h which make direct reference
   to the elements of a FILE structure need to be redefined as 
   callbacks to MATLAB.
 */
#undef getc
#undef putc
#undef clearerr
#undef feof
#undef ferror
#endif



/*
 * mexFunction is the user defined C routine which is called upon invocation
 * of a mex function.
 */
void mexFunction(
    int           nlhs,           /* number of expected outputs */
    mxArray       *plhs[],        /* array of pointers to output arguments */
    int           nrhs,           /* number of inputs */
#if !defined(V4_COMPAT)
    const mxArray *prhs[]         /* array of pointers to input arguments */
#else
    mxArray *prhs[]         /* array of pointers to input arguments */
#endif
);

#if defined (powerc) && defined(__MWERKS__) && defined(MATLAB_MEX_FILE)
#pragma export list mexFunction
#endif


/*
 * Issue error message and return to MATLAB prompt
 */
extern void mexErrMsgTxt(
    const char	*error_msg	/* string with error message */
    );


/*
 * Issue error message if warnings enabled in MATLAB
 */
extern void mexWarnMsgTxt(
    const char	*error_msg	/* string with error message */
    );


/*
 * mex equivalent to MATLAB's "disp" function
 */
extern int mexPrintf(
    const char	*fmt,	/* printf style format */
    ...				/* any additional arguments */
    );


/*
#define printf mexPrintf
*/


/*
 * Remove all components of an array plus the array header itself
 * from MATLAB's memory allocation list.  The array will now
 * persist between calls to the mex function.  To destroy this
 * array, you will need to explicitly call mxDestroyArray().
 */
extern void mexMakeArrayPersistent(
    mxArray *pa              /* pointer to array */
    );


/*
 * Remove memory previously allocated via mxCalloc from MATLAB's
 * memory allocation list.  To free this memory, you will need to
 * explicitly call mxFree().
 */
extern void mexMakeMemoryPersistent(void *ptr);


/*
 * Look up a function and return an opaque handle for use with
 * mexCallMATLABFunction.
 */
extern void mexGetFunctionHandle(void);


/*
 * Call a function whose handle was determined by mexGetFunctionHandle.
 */
extern void mexCallMATLABFunction(void);


/*
 * Register a function pointer as a MATLAB-callable function.
 */
extern void mexRegisterFunction(void);


/*
 * mex equivalent to MATLAB's "set" function
 */
extern int mexSet(double handle, const char *property, mxArray *value);


/* API interface which mimics the "get" function */
extern const mxArray *mexGet(double handle, const char *property);


/*
 * call MATLAB function
 */
extern int mexCallMATLAB(
    int		nlhs,			/* number of expected outputs */
    mxArray	*plhs[],		/* pointer array to outputs */
    int		nrhs,			/* number of inputs */
    mxArray	*prhs[],		/* pointer array to inputs */
    const char	*fcn_name		/* name of function to execute */
    );


/*
 * set or clear mexCallMATLAB trap flag (if set then an error in  
 * mexCallMATLAB is caught and mexCallMATLAB will return a status value, 
 * if not set an error will cause control to revert to MATLAB)
 */
extern void mexSetTrapFlag(int flag);


/*
 * Perform in-place subscript assignment.
 */
extern void mexSubsAssign(
      mxArray *plhs, /* pointer to lhs, to be modified in-place */
      const mxArray *sub[], /* array of subscripts for lhs */
      int nsubs,     /* number os subscripts */
      const mxArray *prhs /* pointer to rhs */
      );


/*
 * Retrieve a specified subset of an array.
 */
extern mxArray *mexSubsReference(
      const mxArray *prhs, /* pointer to rhs */
      const mxArray *subs[], /* array of subscripts for rhs */
    int nsubs /* number of subscripts */
      );


/*
 * Print an assertion-style error message and return control to the
 * MATLAB command line.
 */ 
extern void mexPrintAssertion(
		const char *test, 
		const char *fname, 
		int linenum, 
		const char *message);


/*
 * mexAddFlops is no longer allowed.  
 */
#define mexAddFlops(x) mexAddFlops_is_obsolete



/*
 * Tell whether or not a mxArray is in MATLAB's global workspace.
 */
extern bool mexIsGlobal(const mxArray *pA);


#if defined(V4_COMPAT)


/*
 * Easy put copy of the matrix in the local workspace
 * Obsolete: use mxCreateDoubleMatrix() and mexPutArray(parray, "caller")
 * instead
 */
extern int mexPutFull(
    char	*name,		/* name of variable in question */
    int		m,		/* number of rows */
    int		n,		/* number of columns */
    double	*pr,		/* real part */
    double	*pi		/* imaginary part */
    );


/*
 * Easy get copy of the matrix from the local workspace
 * Obsolete: use mexGetArray(name, "caller") and mxGet
 * routines instead
 */
extern int mexGetFull(
    char	*name,		/* name of variable in question */
    int		*m,		/* number of rows */
    int		*n,		/* number of columns */
    double	**pr,		/* real part */
    double	**pi		/* imaginary part */
    );


#define mexGetEps   mxGetEps
#define mexGetInf   mxGetInf
#define mexGetNaN   mxGetNaN
#define mexIsFinite mxIsFinite
#define mexIsInf    mxIsInf
#define mexIsNaN    mxIsNaN
#define mexGetGlobal(name)    mexGetArrayPtr(name, "global")
#define mexGetMatrixPtr(name) mexGetArrayPtr(name, "caller")
#define mexGetMatrix(name)    mexGetArray(name, "caller")
#define mexPutMatrix(name)    mexPutArray(name, "caller")
#else
#define mexGetGlobal()    mexGetGlobal_is_obsolete
#define mxSetString()     mxSetString_is_obsolete
#define mxSetDispMode()   mxSetDispMode_is_obsolete
#define mexGetMatrixPtr() mexGetMatrixPtr_is_obsolete
#define mexGetMatrix()    mexGetMatrix_is_obsolete
#define mexPutMatrix()    mexPutMatrix_is_obsolete
#define mexPutFull()      mexPutFull_is_obsolete
#define mexGetFull()      mexGetFull_is_obsolete
#define mexGetEps()       mexGetEps_is_obsolete
#define mexGetInf()       mexGetInf_is_obsolete
#define mexGetNaN()       mexGetNaN_is_obsolete
#define mexIsFinite()     mexIsFinite_is_obsolete
#define mexIsInf()        mexIsInf_is_obsolete
#define mexIsNaN()        mexIsNaN_is_obsolete
#endif /* V4_COMPAT */


/*
 * Place a copy of the named array into the specified workspace
 */
extern int mexPutArray(
    mxArray	*parray,		/* matrix to copy */
    const char *workspace
    );


/*
 * return a pointer to the named array from the specified workspace
 */
extern const mxArray *mexGetArrayPtr(
    const char *name,		/* name of symbol */
    const char *workspace
    );


/*
 * return a copy of the named array from the specified workspace
 */
extern mxArray *mexGetArray(
    const char	*name,		/* name of variable in question */
    const char *workspace
    );


/*
 * Lock a MEX-function so that it cannot be cleared from memory.
 */
extern void mexLock(void);


/*
 * Unlock a locked MEX-function so that it can be cleared from memory.
 */
extern void mexUnlock(void);


/*
 * Return true if the MEX-function is currently locked, false otherwise.
 */
extern bool mexIsLocked(void);


/*
 * Return the name of a the MEXfunction currently executing.
 */
extern const char *mexFunctionName(void);


/*
 * Parse and execute MATLAB syntax in string.  Returns zero if successful,
 * and a non zero value if an error occurs.
 */
extern int mexEvalString(
   const char *str	   /* matlab command string */
);


/*
 * Register Mex-file's At-Exit function (accessed via MEX callback)
 */
extern int mexAtExit(
    void	(*exit_fcn)(void)
    );


/*
 * clear out MEX-file and free up info structure
 */
extern int mexClearMexFile(
    MEX_impl_info info		/* Mex-file implementation-dependent info */
    );


/*
 * Clear a global of a given name in a workspace.
 */
extern void mexClearGlobal( const char *name );

#ifdef __cplusplus
    }	/* extern "C" */
#endif

#endif /* mex_h */

