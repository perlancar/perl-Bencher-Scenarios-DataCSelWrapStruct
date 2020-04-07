package Bencher::Scenario::DataCSelWrapStruct::unwrap_tree;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

use Data::CSel::WrapStruct qw(wrap_struct);

our $scenario = {
    summary => 'Benchmark unwrap_tree()',
    participants => [
        {fcall_template => 'Data::CSel::WrapStruct::unwrap_tree(<tree>)'},
    ],
    datasets => [
        {name => 'scalar', args => {tree=>wrap_struct(1)}},
        {name => 'array1', args => {tree=>wrap_struct([1])}},
        {name => 'array100', args => {tree=>wrap_struct([1..100])}},
        {name => 'array1000', args => {tree=>wrap_struct([1..1000])}},
        {name => 'hash1', args => {tree=>wrap_struct({1=>1})}},
        {name => 'hash100', args => {tree=>wrap_struct({ map {$_=>$_} 1..100 })}},
        {name => 'hash1000', args => {tree=>wrap_struct({ map {$_=>$_} 1..1000 })}},
    ],
};

1;
# ABSTRACT:
