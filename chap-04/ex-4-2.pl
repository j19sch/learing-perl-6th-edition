#!/usr/bin/perl

use utf8;
use warnings;
use strict;

sub total {
	my @numbers = @_;
	my $total;
	foreach (0...$#numbers) {
		$total += shift(@numbers);
	}
	$total;	
}

my @input = (1..1000);
my $input_total = total(@input);
print "The total of \@input is $input_total.\n";
