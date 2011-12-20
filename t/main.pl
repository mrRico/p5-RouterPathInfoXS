use strict;
use warnings;

#use Test::More;
use ExtUtils::testlib;
use lib::abs '../lib';

#use_ok('Router::PathInfoXS');
use Router::PathInfoXS;


sub app {
      my $env = shift;
      return [
          '200',
          [ 'Content-Type' => 'text/plain' ],
          [ Router::PathInfoXS->test("Привет"); ], # or IO::Handle-like object
      ];
}

