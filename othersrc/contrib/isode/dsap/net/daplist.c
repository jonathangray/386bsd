/* daplist.c - */

#ifndef	lint
static char *rcsid = "$Header: /f/osi/dsap/net/RCS/daplist.c,v 7.1 91/02/22 09:21:00 mrose Interim $";
#endif

/* 
 * $Header: /f/osi/dsap/net/RCS/daplist.c,v 7.1 91/02/22 09:21:00 mrose Interim $
 *
 *
 * $Log:	daplist.c,v $
 * Revision 7.1  91/02/22  09:21:00  mrose
 * Interim 6.8
 * 
 * Revision 7.0  90/07/26  14:45:22  mrose
 * *** empty log message ***
 * 
 */

/*
 *				  NOTICE
 *
 *    Acquisition, use, and distribution of this module and related
 *    materials are subject to the restrictions of a license agreement.
 *    Consult the Preface in the User's Manual for the full terms of
 *    this agreement.
 *
 */


/* LINTLIBRARY */

#include "quipu/util.h"
#include "quipu/dap2.h"
#include "../x500as/DAS-types.h"

dap_list (ad, id, arg, error, result)
int		  ad;
int		* id;
struct ds_list_arg          *arg;
struct ds_list_result       *result;
struct DSError              *error;
{
    struct DAPindication	  di_s;
    struct DAPindication	* di = &(di_s);

    ++(*id);

    (void) DapList (ad, (*id), arg, di, ROS_INTR);

    error->dse_type = DSE_NOERROR;

    switch (di->di_type)
    {
	case DI_RESULT:
	{
	    struct DAPresult	* dr = &(di->di_result);

            /* Nasty struct copy */
            (*result) = dr->dr_res.res_ls;      /* struct copy */
            dr->dr_res.result_type = -1;        /* Prevent freeing */
	    DRFREE (dr);
	    return (DS_OK);
	}

	case DI_ERROR:
	{
	    struct DAPerror	* de = &(di->di_error);

	    (*error) = de->de_err;	/* struct copy */
	    return (DS_ERROR_REMOTE);
	}

	case DI_PREJECT:
	    error->dse_type = DSE_REMOTEERROR;
	    return (DS_ERROR_PROVIDER);

	case DI_ABORT:
	    error->dse_type = DSE_REMOTEERROR;
	    return (DS_ERROR_CONNECT);

	default:
	    error->dse_type = DSE_REMOTEERROR;
	    return (DS_ERROR_PROVIDER);
    }
}

int	  DapList (ad, id, arg, di, asyn)
int			  ad;
int			  id;
struct ds_list_arg	* arg;
struct DAPindication	* di;
int			  asyn;
{
    PE                  arg_pe;

    if(encode_DAS_ListArgument(&arg_pe,1,0,NULLCP,arg) != OK)
    {
	return(dapreject (di, DP_INVOKE, id, NULLCP, "List argument encoding failed"));
    }

    return (DapInvokeReqAux (ad, id, OP_LIST, arg_pe, di, asyn));

}

