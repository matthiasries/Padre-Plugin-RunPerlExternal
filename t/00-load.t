#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Padre::Plugin::RunPerlExternal' ) || print "Bail out!
";
}

diag( "Testing Padre::Plugin::RunPerlExternal $Padre::Plugin::RunPerlExternal::VERSION, Perl $], $^X" );
