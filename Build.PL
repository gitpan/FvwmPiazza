
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Path::Class' => '0',
    'Test::More' => '0',
    'Test::Perl::Critic::Progressive' => '0',
    'Try::Tiny' => '0'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Fvwm module for tiling windows',
  'dist_author' => [
    'Kathryn Andersen'
  ],
  'dist_name' => 'FvwmPiazza',
  'dist_version' => '0.2002',
  'license' => 'perl',
  'module_name' => 'FvwmPiazza',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Class::Base' => '0',
    'FVWM::Module' => '0',
    'General::Parse' => '0',
    'Module::Pluggable' => '0',
    'YAML::Syck' => '0'
  },
  'script_files' => [
    'scripts/FvwmPiazza'
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
