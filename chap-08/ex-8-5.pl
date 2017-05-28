#!/usr/bin/perl

use utf8;
use warnings;
use strict;

while (<>) {
	chomp;
	if (/\b(?<word>\w*a)\b(?<bonus>.{0,5})/) {
		print "Matched: |$`<$&>$'|\n";
		print "\$+\{word\} contains $+{word}\n";
		print "your bonus is: $+{bonus}\n";
	} else {
		print "No match: |$_|\n";
	}
}

