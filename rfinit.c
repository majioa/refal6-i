/************************************************************************/
/*   R E F A L - 6         Copyright (C) 1992 by Arkady Klimov          */
/*      !!! This module was generated by GENTAB.REF                     */
/*       rfinit.c    - initialization/termination functions             */
/************************************************************************/

#define LOGICAL int
#define TRUE 1

extern LOGICAL initio();
extern LOGICAL endio();
extern LOGICAL inirbio();
extern LOGICAL initime();
extern LOGICAL initar();
extern LOGICAL inivideo();
extern LOGICAL inimouse();


LOGICAL rf_inist()
{
initio();
inirbio();
initime();
initar();
inivideo();
inimouse();
return(TRUE);
};

LOGICAL rf_termst()
{
endio();
return(TRUE);
};
