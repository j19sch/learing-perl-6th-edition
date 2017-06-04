#!/usr/bin/perl

use utf8;
use warnings;
use strict;

foreach ( glob( '.* *') ) {
	my $destination = readlink $_;
	print "$_ -> $destination\n" if defined $destination;
}
