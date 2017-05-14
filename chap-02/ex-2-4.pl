#!/usr/bin/perl

use utf8;
use warnings;


print "Let's multiply two numbers!\n";

print "first number: "; 
chomp($first_number = <STDIN>);


print "second number: "; 
chomp($second_number = <STDIN>);

$product = $first_number * $second_number;
print "The product of $first_number and $second_number is $product.\n";
