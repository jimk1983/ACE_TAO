eval '(exit $?0)' && eval 'exec perl -S $0 ${1+"$@"}'
    & eval 'exec perl -S $0 $argv:q'
    if 0;

# $Id$
# -*- perl -*-

use lib '../../../../bin';
use PerlACE::Run_Test;

$status = 0;
$iorfile = PerlACE::LocalFile ("time.ior");

unlink $iorfile;

$SV = new PerlACE::Process ("server", "-o $iorfile");
$CL = new PerlACE::Process ("client", "-f $iorfile -x");

$SV->Spawn ();

if (PerlACE::waitforfile_timed ($iorfile, 10) == -1) {
    print STDERR "ERROR: Could not find file <$iorfile>\n";
    $SV->Kill ();
    exit 1;
}

$client = $CL->SpawnWaitKill (60);

if ($client != 0) {
    print STDERR "ERROR: client returned $client\n";
    $status = 1;
}

$server = $SV->WaitKill (5);

if ($server != 0) {
    print STDERR "ERROR: server returned $server\n";
    $status = 1;
}

unlink $iorfile;

exit $status;
