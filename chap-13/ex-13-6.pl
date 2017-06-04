#!/usr/bin/perl

use utf8;
use warnings;
use strict;

use File::Basename;
use File::Spec;

my($source, $destination) = @ARGV;

if (-d $destination) {
	my $filename = basename $source;
	$destination = File::Spec->catfile($destination, $filename);
}

link $source, $destination or die "can't link $source to $destination: $!\n";
