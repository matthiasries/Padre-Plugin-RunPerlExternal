use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Padre::Plugin::RunPerlExternal',
    AUTHOR              => q{Matthias Ries <matthias@coffein-shock.de>},
    VERSION_FROM        => 'lib/Padre/Plugin/RunPerlExternal.pm',
    ABSTRACT_FROM       => 'lib/Padre/Plugin/RunPerlExternal.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Padre-Plugin-RunPerlExternal-*' },
);
