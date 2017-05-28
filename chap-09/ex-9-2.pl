#!/usr/bin/perl
## Copyright (C) 2017 by me

use utf8;
use warnings;
use strict;
use autodie;

my $in = $ARGV[0];

my $out = $in;
$out =~ s/(\.\w+)?$/\-ex2.out/;

open my $in_fh, '<', $in;
open my $out_fh, '>', $out;

while (<$in_fh>) {
	s/fred/Larry/gi;
	print $out_fh $_;
}
