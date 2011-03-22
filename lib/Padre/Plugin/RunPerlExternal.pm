package Padre::Plugin::RunPerlExternal;

use 5.008;
use strict;
use warnings;
use utf8;
use Padre::Constant ();
use Padre::Plugin   ();
use Padre::Wx       ();

our $VERSION = '0.2';
our @ISA     = 'Padre::Plugin';

#description: used by padre for compat. check
#todo: syncronize
sub padre_interfaces {
	return (
		'Padre::Plugin'   => 0.66,
		'Padre::Constant' => 0.66,
	);
}

#description: name shown in menue and pluginmanager
#todo: find better name
sub plugin_name {
	'RunPerlExternal';
}

#description: menue entry
#todo: none
sub menu_plugins_simple {
	my $self = shift;
	return $self->plugin_name => [
		'Run Perl in external Window' => sub { $self->in_term },
	];
}


#description: changes the config, runs the document and set the config back
#todo: run_document external without changing the config
sub in_term {
	my $self = shift;
	my $config = Padre::Current->main->config;
	my $orig = $config->run_use_external_window;
	$config->set( "run_use_external_window", 1 );
	Padre::Current->main->run_document;
	$config->set( "run_use_external_window", $orig );
	return;
}

1;