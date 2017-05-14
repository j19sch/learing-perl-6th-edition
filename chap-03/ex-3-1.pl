#!/usr/bin/perl

use utf8;
use warnings;

print "Give me some lines and I'll return them im reverse order.\n";
@lines = <STDIN>;

print "Here you go:\n";
print reverse(@lines);
