/*
 * Prints a message whenever a top-level signal changes.
 */

#include <stdio.h>
#include "mti.h"

static void changed( mtiSignalIdT sig )
{
    mti_PrintFormatted( "Time %d: Signal %s changed\n",
                       mti_Now(), mti_GetSignalName(sig) );
}

void monitor_init(
    mtiRegionIdT       region,
    char              *param,
    mtiInterfaceListT *generics,
    mtiInterfaceListT *ports
)
{
    mtiSignalIdT  sig;
    mtiProcessIdT proc;

    sig = mti_FirstSignal( mti_GetTopRegion() );
    while ( sig ) {
        proc = mti_CreateProcess( "monitor", changed, sig );
        mti_Sensitize( proc, sig, MTI_EVENT );
        sig = mti_NextSignal();
    }
}
