# Pragmas.
use strict;
use warnings;

# Modules.
use App::CPAN::Search;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($App::CPAN::Search::VERSION, 0.01, 'Version.');
