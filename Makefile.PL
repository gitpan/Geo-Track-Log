use 5.005001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Geo::Track::Log',
    VERSION_FROM      => 'lib/Geo/Track/Log.pm', # finds $VERSION
    PREREQ_PM         => {
	'Time::Piece' => 1.08,
	'XML::Simple' => 2.12,
    }, 
   ABSTRACT_FROM  => 'lib/Geo/Track/Log.pm', # retrieve abstract from module
   AUTHOR         => 'Rich Gibson <rgibson@cpan.org>',
);
