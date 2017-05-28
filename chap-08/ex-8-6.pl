#!/usr/bin/perl

use utf8;
use warnings;
use strict;

while (<>) {
	chomp;
	if (/\s\z/) {
		print "$_#\n";
	}
}

