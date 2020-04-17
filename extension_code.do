************************************
* Extension code 				   *
* Author: Liz Masten		 	   *
* Project: Games Rivals Play EXT   *
* Date: April 17, 2020			   *
************************************ 

*******************************************************************************
* This is the .do file for the												  *
* extension of "Games Rivals Play: Terrorism in International Relations"	  *
* conducted as part of a final project for GOV 1006. 			     	      *
*******************************************************************************

use "updated_data.dta"
set more off

******************
* Table 1        *
******************

/* Table 1, Model 1*/
nbreg terrorCounts rivalry jointDem1 logcapratio contiguity, nolog dispersion(constant) 

/*Table 1, Model 2 */
nbreg terrorCounts2 rivalry jointDem1 logcapratio contiguity, nolog dispersion(constant) 

/*Table 1, Model 3 */
nbreg terrorCounts rivalry jointDem1 logcapratio historyl1 historyl2 coldwar1 conflict1 conflict2 contiguity war1 war2, nolog dispersion(constant)
 
/*Table 1, Model 4 */
 nbreg terrorCounts2 rivalry jointDem1 logcapratio historyl1 historyl2 coldwar1 conflict1 conflict2 contiguity war1 war2, nolog dispersion(constant)


********************
* Table 2          *
********************

/* Table 2, Model 5 */
zinb terrorCounts rivalry jointDem1 logcapratio historyl1 historyl2 coldwar1 conflict1 conflict2 contiguity war1 war2, inflate(rivalry jointDem1 logcapratio historyl1 historyl2 coldwar1 conflict1 conflict2 contiguity war1 war2) nolog 

/* Table 2, Model 6 */
zinb terrorCounts2 rivalry jointDem1 logcapratio historyl1 historyl2 coldwar1 conflict1 conflict2 contiguity war1 war2, inflate(rivalry jointDem1 logcapratio historyl1 historyl2 coldwar1 conflict1 conflict2 contiguity war1 war2) nolog

/* Table 2, Model 7 */
/* Note from original authors: convergence issues require a different maximization technique (bfgs) */
zinb terrorCounts rivalry jointDem1 logcapratio historyl1 historyl2 coldwar1 conflict1 conflict2 contiguity war1 war2, inflate(jointDem1) technique(bfgs) nolog

/* Table 2, Model 8 */
zinb terrorCounts2 rivalry jointDem1 logcapratio  historyl1 historyl2 coldwar1 conflict1 conflict2 contiguity war1 war2, inflate(jointDem1) nolog


