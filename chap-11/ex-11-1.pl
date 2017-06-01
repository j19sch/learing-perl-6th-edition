#!/usr/bin/perl

use utf8;
use warnings;
use strict;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

for (sort keys %modules) {
	my $version = $modules{$_} // "undefined";
	print "$_  - $version\n";
} 
