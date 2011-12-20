use strict;
use warnings;

use Test::More;
BEGIN { use_ok('Router::PathInfoXS') };

use ExtUtils::testlib;
use lib::abs '../lib';

Router::PathInfoXS->test();
