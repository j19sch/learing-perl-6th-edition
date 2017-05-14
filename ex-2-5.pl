#!/usr/bin/perl

use utf8;
use warnings;

print "Let's print a string a bunch of times.\n";

print "Which string do you want to see repeated?\n";
$string = <STDIN>;

print "How many times do you want to see it repeated?\n";
chomp($repititions = <STDIN>);

print "Here you go:\n";
print $string x $repititions;
