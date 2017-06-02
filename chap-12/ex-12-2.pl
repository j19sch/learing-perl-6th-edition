#!/usr/bin/perl

use utf8;
use warnings;
use strict;

die "No files provided, so none is the oldest" if @ARGV == 0;

my $oldest_file;

foreach (@ARGV) {
	$oldest_file = $oldest_file // $_;
	$oldest_file = $_ if (-M $_ > -M $oldest_file);
}

my $oldest_date = -M $oldest_file;

printf "The oldest file is %s and it is %.1f days old.\n", $oldest_file, $oldest_date;
