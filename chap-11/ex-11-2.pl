#!/usr/bin/perl

use utf8;
use warnings;
use strict;

use DateTime;

my $input_date = DateTime->new(
	year	=> $ARGV[0],
	month	=> $ARGV[1],
	day	=> $ARGV[2],
	);

my $current_time = DateTime->now(
	time_zone	=> "local",
	);

my $interval = $current_time - $input_date;

my $years = $interval->years;
my $months = $interval->months;
my $days = $interval->days;

print "$years year(s), $months month(s),  $days day(s)\n";

