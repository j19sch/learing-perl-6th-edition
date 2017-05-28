#!/usr/bin/perl
## Copyright (C) 2017 by me

use utf8;
use warnings;
use strict;

my $what = "fred|barney";

while (<>) {
	chomp;
	if (/($what){3}/) {
		print "Matched: |$`<$&>$'|\n";
	} else {
		print "No match: |$_|\n";
	}
}
