use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Padre::Plugin::RunPerlExternal',
    AUTHOR              => q{Matthias Ries <riesm@cpan.org>},
    VERSION_FROM        => 'lib/Padre/Plugin/RunPerlExternal.pm',
    ABSTRACT            => 'Runs perl-document in external window. No need for config-switching',
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
