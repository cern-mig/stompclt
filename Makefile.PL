use strict;
use warnings;
use ExtUtils::MakeMaker;

my(%param, $emv);

%param = (
    NAME          => 'stompclt',
    AUTHOR        => 'Lionel Cons <lionel.cons@cern.ch>',
    VERSION       => '1.7',
    ABSTRACT_FROM => 'stompclt',
    LICENSE       => 'perl',
    EXE_FILES     => [ 'stompclt' ],
    PL_FILES      => {},
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
    clean         => { FILES => 'stompclt-*' },
);

($emv = $ExtUtils::MakeMaker::VERSION) =~ s/_//;
if ($emv < 6.31) {
    # missing LICENSE
    delete($param{LICENSE});
}

WriteMakefile(%param);
