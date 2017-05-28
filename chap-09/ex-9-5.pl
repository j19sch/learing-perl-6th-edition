#!/usr/bin/perl
## Copyright (C) 2017 by me

use utf8;
use warnings;
use strict;
use autodie;

my %to_do;
foreach (@ARGV) {
	$to_do{$_} = 1;
}

while (<>) {
	if (/\A## Copyright/) {
		delete $to_do{$ARGV};
	}
}

@ARGV = keys %to_do;

$^I = ".bu";

while (<>) {
	if (/#!\/usr\/bin\/perl/) {
		$_ .= "## Copyright (C) 2017 by me\n";
	}
	print;
}
