#!/usr/bin/perl

use utf8;
use warnings;
use strict;

print "Directory name? ";
chomp(my $dir_name = <STDIN>);

if ($dir_name eq ''){
	chdir or die "cannot chdir to $dir_name: $!";
} else {
	chdir $dir_name or die "cannot chdir to $dir_name: $!";
}

my @dir_files = <* .*>;
foreach (@dir_files) {
	print "$_\n";
}
