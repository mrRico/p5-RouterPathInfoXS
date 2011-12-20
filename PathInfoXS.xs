#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"


MODULE = Router::PathInfoXS		PACKAGE = Router::PathInfoXS   PREFIX = pxs_		

Router::PathInfoXS
pxs_test(class)
    char* class
    PREINIT:
        PERL_UNUSED_VAR(class);
    CODE:
        {
            print "Hello\n";

            RETVAL = 1;
        }
    OUTPUT:
        RETVAL


