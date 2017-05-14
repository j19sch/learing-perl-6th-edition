#!/usr/bin/perl

use utf8;
use warnings;

$pi = 3.141592654;

print "What's the radius of the circle you want to calculate the circumference of?\n";
chomp($radius = <STDIN>);

if ($radius < 0) {
	$radius = 0;
}

$circumference = $radius * 2 * $pi;

print "The circumference of a circle with radius $radius is $circumference.\n";

