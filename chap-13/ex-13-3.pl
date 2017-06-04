#!/usr/bin/perl

use utf8;
use warnings;
use strict;

print "Directory name? ";
chomp(my $dir_name = <STDIN>);

my $dir;

if ($dir_name eq ''){
	$dir = $ENV{"HOME"};
} else {
	$dir = $dir_name;
}

opendir my $dh, $dir or die "cannot open $dir: $!";

my @files = readdir $dh;

foreach my $file (sort @files) {
	print "$file\n";
}
