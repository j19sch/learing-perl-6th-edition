#!/usr/bin/perl
## Copyright (C) 2017 by me

use utf8;
use warnings;
use strict;
use autodie;

my $in = $ARGV[0];

my $out = $in;
$out =~ s/(\.\w+)?$/\-ex3.out/;

open my $in_fh, '<', $in;
open my $out_fh, '>', $out;

while (<$in_fh>) {
	s/fred/--__--/gi;
	s/wilma/Fred/gi;
	s/--__--/Wilma/g;
	print $out_fh $_;
}
