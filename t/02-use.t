use strict;
use warnings;
use Test::More;
#use Config;
use Test::Alien;
use Alien::geos;

alien_ok 'Alien::geos';

diag ('libs: '   . Alien::geos->libs // '');
diag ('cflags: ' . Alien::geos->cflags // '');
diag ('Dynamic libs: ' . join ':', Alien::geos->dynamic_libs // ());
diag ('bin dir: ' . Alien::geos->bin_dir // '');
my $bin = Alien::geos->bin_dir // '';

#  nasty hack
$ENV{LD_LIBRARY_PATH}   = Alien::geos->dist_dir . '/lib';
$ENV{DYLD_LIBRARY_PATH} = Alien::geos->dist_dir . '/lib';


TODO: {
    local $TODO = 'known to fail under several variants - help appreciated';
      #if $^O =~ /darwin|bsd/i;
    my $xs = do { local $/; <DATA> };
    xs_ok {xs => $xs, verbose => 1}, with_subtest {
      my($module) = @_;
      ok $module->version;
    };
}


done_testing();

 
__DATA__

//  A very simple test.  It really only tests that we can load geos.

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "stdio.h"
#include <geos.h>

int main()
{
   printf("Hello, World!");
   return 0;
}

const char *
version(const char *class)
{
   return "v1";
}

MODULE = TA_MODULE PACKAGE = TA_MODULE
 
const char *version(class);
    const char *class;

