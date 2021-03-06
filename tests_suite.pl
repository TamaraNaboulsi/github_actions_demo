#!/usr/bin/env perl
use strict;
use warnings;
use Test::More tests => 5;

print "Running tests\n";

require_ok('Devel::Trace');

ok(1 + 2 == 3, '1 + 2 == 3');
ok(2 * 4 == 8, '2 * 4 == 8');

my $divide = 5 / 3;
ok(abs($divide - 1.666667) < 0.001, '5 / 3 == (approx) 1.666667');

my $subtract = -3 + 3;
ok(($subtract eq "0" or $subtract eq "-0"), '-3 + 3 == 0');
