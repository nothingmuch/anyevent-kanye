#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 3;

use ok 'AnyEvent::Kanye';

my $cv = AnyEvent::Kanye->condvar;

ok( $cv, "got a condvar" );

$cv->send("hello");

like( $cv->recv, qr/Beyonce/, "interrupted" );

