#!/usr/bin/perl

use utf8;
use warnings;
use strict;

die "No files provided, so we're done here." if @ARGV == 0;


my @files;

foreach (@ARGV) {
	push @files, $_ if (-r -w -x $_);
}

print "The following of those files are readable, writeable and executable:\n";
print join (", ", @files) . "\n";
