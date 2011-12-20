use strict;
use warnings;

#use Test::More;
use ExtUtils::testlib;
use lib::abs '../lib';

#use_ok('Router::PathInfoXS');
use Router::PathInfoXS;
Router::PathInfoXS->test("Привет");
Router::PathInfoXS->test("Hi");
Router::PathInfoXS->test("Тест");
Router::PathInfoXS->test("POST");
