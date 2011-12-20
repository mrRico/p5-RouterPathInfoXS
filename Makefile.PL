use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Router::PathInfoXS',
    VERSION_FROM      => 'lib/Router/PathInfoXS.pm',
    PREREQ_PM         => {
        'lib::abs' => 0
    },
    LIBS              => [''], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I.', # e.g., '-I. -I/usr/include/other'
	# Un-comment this if you add C files to link with later:
    # OBJECT            => '$(O_FILES)', # link all the C files too
);
