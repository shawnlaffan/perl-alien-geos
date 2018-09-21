package Alien::geos;

use strict;
use warnings;
use parent qw( Alien::Base );

our $VERSION = '1.000_001';


1;

__END__

=head1 NAME

Alien::geos - Compile GEOS, the Geometry Engine, Open Source

=head1 BUILD STATUS
 
=begin HTML
 
<p>
    <img src="https://img.shields.io/badge/perl-5.10+-blue.svg" alt="Requires Perl 5.10+" />
    <a href="https://travis-ci.org/shawnlaffan/perl-alien-geos"><img src="https://travis-ci.org/shawnlaffan/perl-alien-geos.svg?branch=master" /></a>
    <a href="https://ci.appveyor.com/project/shawnlaffan/perl-alien-geos"><img src="https://ci.appveyor.com/api/projects/status/1tqk5rd40cv2ve8q?svg=true" /></a>
</p>

=end HTML

=head1 SYNOPSIS

    use Alien::geos;

    use Env qw(@PATH);
    unshift @PATH, Alien::geos->bin_dir;

    print Alien::geos->dist_dir;

    
=head1 DESCRIPTION

GEOS is the Geometry Engine, Open Source.  See L<http://geos.osgeo.org/>.


=head1 REPORTING BUGS

Please send any bugs, suggestions, or feature requests to 
L<https://github.com/shawnlaffan/perl-alien-geos/issues>.

=head1 SEE ALSO

L<Geo::GDAL>

L<Geo::GDAL::FFI>

=head1 AUTHORS

Shawn Laffan, E<lt>shawnlaffan@gmail.comE<gt>


=head1 COPYRIGHT AND LICENSE


Copyright 2018 by Shawn Laffan


This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
