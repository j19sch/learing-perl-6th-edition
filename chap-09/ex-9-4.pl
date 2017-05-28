#!/usr/bin/perl
## Copyright (C) 2017 by me

use utf8;
use warnings;
use strict;
use autodie;

$^I = ".bu";

while (<>) {
	s|^(#!/usr/bin/perl)|$1\n## Copyright (C) 2017 by me|;  # or regex for shebang-line then append
}
