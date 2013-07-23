#!/usr/bin/perl
use strict;
use Getopt::Long;
use Set::IntervalTree;
use JSON;

my ($inputfile,$debug);

GetOptions(
	   'i|input|inputfile:s' => \$inputfile,
           'debug' => \$debug,
          );

# Printing .json
my $json = JSON->new->allow_nonref;
my $hash;
$hash->{alfa}{beta} = 1;
push @{$hash->{alfa}{gamma}}, 2;
push @{$hash->{alfa}{gamma}}, 3;
push @{$hash->{alfa}{gamma}}, 4;
$hash->{delta} = 5;
my $json_results = $json->encode( $hash );

print "$json_results\n";

1;
