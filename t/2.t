# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More qw(no_plan);

# of if you know how many tests there will be...
# use Test::More tests => 1;
# use Geo::Track::Log;
 BEGIN { use_ok('Geo::Track::Log') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

# test wayfiles
my $trk = new Geo::Track::Log;
my $st = qq( 38? 24'  9.1" -122? 49' 43.8" 0.0 WGS84   HOME "CRTD 15:45 30-JUL-00";);
$pt = $trk->fixGarnixWayLine($st);
is(sprintf("%.5f",  $pt->{lat}),   38.40253, "fixGarnixWayLine Check latitude");
is(sprintf("%.4f", $pt->{long}), -122.8288, "fixGarnixWayLine Check longitude");
is($pt->{name}, 'HOME', "fixGarnixWayLine Check name");
exit;



