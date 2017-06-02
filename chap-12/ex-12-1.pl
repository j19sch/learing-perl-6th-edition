#!/usr/bin/perl

use utf8;
use warnings;
use strict;

foreach (@ARGV) {
	unless (-e $_) {
		print "$_ does not exist.\n";
		next;
	}

	my @permissions;
	push @permissions, "readable" if -r $_;
	push @permissions, "writable" if -w $_;
	push @permissions, "executable" if -x $_;

	if (@permissions != 0) {
	 	print "$_ exists and is " . join (" and ", @permissions) . ".\n";
	} else {
	 	print "$_ exists but has no permissions set.\n";
	}

}
