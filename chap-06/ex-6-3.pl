#!/usr/bin/perl

use utf8;
use warnings;
use strict;

my %env = %ENV;

my $max_key_length = 0;

foreach my $key (keys %env) {
	if (length $key > $max_key_length) {
		$max_key_length = length $key;
	}
}

foreach my $key (sort keys %env) {
	# printf "%-30s $env{$key}\n", $key;
	printf "%-${max_key_length}s $env{$key}\n", $key;
}
