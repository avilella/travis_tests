#!/usr/bin/perl
use strict;
use Set::IntervalTree;
use JSON;
# use lib 'libperl/lib/perl5';
my $json = JSON->new->allow_nonref;
my $hash;
$hash->{alfa}{beta} = 1;
push @{$hash->{alfa}{gamma}}, 2;
push @{$hash->{alfa}{gamma}}, 3;
$hash->{delta} = 5;
my $json_results = $json->encode( $hash );
print "$json_results\n";

my $t = Set::IntervalTree->new;
$t->insert({true_start=>1,true_end=>99},1,99);

1;
