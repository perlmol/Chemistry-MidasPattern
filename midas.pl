#!/home/ivan/bin/perl

use strict;
use warnings;

use lib 'lib';
use Chemistry::File::MidasPattern;
use Chemistry::File::PDB;
use Data::Dumper;

#my $patt = Chemistry::MidasPattern->new(shift || ':8@CA');
my $str = shift || ':8@CA';
my $mol = Chemistry::MacroMol->read(shift || "test2.pdb");
#my $patt = Chemistry::MidasPattern->parse($str, format => 'midas');
my $patt = Chemistry::MidasPattern->new($str);
#print Dumper $patt->{tree};

$patt->match($mol);
print "Pattern: $str\n";
printf "Match: %s\t%s\n",  $_->attr("pdb/residue_name"), $_->name for $patt->atom_map;
printf "Total: %d atoms\n", 0+$patt->atom_map;
