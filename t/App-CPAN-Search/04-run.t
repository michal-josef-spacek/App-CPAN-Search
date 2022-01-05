use strict;
use warnings;

use App::CPAN::Search;
use Test::More 'tests' => 2;
use Test::NoWarnings;
use Test::Output;

# Test.
@ARGV = (
	'-h',
);
my $right_ret = <<'END';
Usage: t/App-CPAN-Search/04-run.t [-h] [--version] module_prefix
	-h		Print help.
	--version	Print version.
	module_prefix	Module prefix. e.g. Module::Install
END
stderr_is(
	sub {
		App::CPAN::Search->new->run;
		return;
	},
	$right_ret,
	'Run help.',
);
