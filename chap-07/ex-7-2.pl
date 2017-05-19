#!/usr/bin/perl

use utf8;
use warnings;
use strict;

use autodie;

open my $lines_fh, '<', 'names.txt';

while( <$lines_fh> ) {
	if (/[Ff]red/) {
		print;
	}
}
