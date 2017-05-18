#!/usr/bin/perl

use utf8;
use warnings;
use strict;


chomp (my @words = <STDIN>);

my %word_count = ();

foreach my $word (@words) {
	$word_count{$word} += 1;
}

print "Here's what I saw:\n";
foreach my $key (sort keys %word_count) {
	print "$key: $word_count{$key}\n";
}
