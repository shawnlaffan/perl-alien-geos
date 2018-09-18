use strict;
use warnings;
use Test::More;
use Test::Alien;

BEGIN {
    use_ok('Alien::geos') or BAIL_OUT('Failed to load Alien::gdal');
}

alien_ok 'Alien::geos';

diag(
    sprintf(
        'Testing Alien::geos %s, Perl %s, %s',
        $Alien::geos::VERSION, $], $^X
    )
);

done_testing();

