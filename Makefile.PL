use 5.006;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'Chemistry::MidasPattern',
    'VERSION_FROM'	=> 'lib/Chemistry/MidasPattern.pm', 
    'PREREQ_PM'		=> {
        'Chemistry::Mol' => 0.24,
        'Chemistry::Pattern' => 0.20,
        'Test::Simple' => 0,
    },
);
