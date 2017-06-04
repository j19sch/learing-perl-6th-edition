#!/usr/bin/perl

use utf8;
use warnings;
use strict;

use File::Basename;
use File::Spec;

my $symlink = $ARGV[0] if ($ARGV[0] eq '-s');
shift @ARGV if $symlink;

my($source, $destination) = @ARGV;

if (-d $destination) {
	my $filename = basename $source;
	$destination = File::Spec->catfile($destination, $filename);
}

if ($symlink) {
	symlink $source, $destination or die "can't symlink $source to $destination: $!\n";
} else {
	link $source, $destination or die "can't link $source to $destination: $!\n";
}
