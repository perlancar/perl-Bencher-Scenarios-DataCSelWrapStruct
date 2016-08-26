package Bencher::Scenario::DataCSelWrapStruct::wrap_struct;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark wrap_struct()',
    participants => [
        {fcall_template => 'Data::CSel::WrapStruct::wrap_struct(<data>)'},
    ],
    datasets => [
        {name => 'scalar', args => {data=>1}},
        {name => 'array1', args => {data=>[1]}},
        {name => 'array100', args => {data=>[1..100]}},
        {name => 'array1000', args => {data=>[1..1000]}},
        {name => 'hash1', args => {data=>{1=>1}}},
        {name => 'hash100', args => {data=>{ map {$_=>$_} 1..100 }}},
        {name => 'hash1000', args => {data=>{ map {$_=>$_} 1..1000 }}},
    ],
};

1;
# ABSTRACT:
