#!/usr/bin/perl

use utf8;
use warnings;
use strict;

sub total {
	my @numbers = @_;
	my $total;
	foreach (0..$#numbers) {
		$total += shift(@numbers);
	}
	$total;	
}

sub above_average {
	my @numbers = @_;
	my $average = &total(@numbers) / scalar @numbers;
	my @keep_these;
	foreach (0..$#numbers) {
		if (@numbers[$_] > $average) {
			push @keep_these, @numbers[$_];
		}
	}
	@keep_these;
}


my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";

my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
