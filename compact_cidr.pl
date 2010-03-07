#!/usr/bin/perl -w

use NetAddr::IP qw(Compact);

my @big;
while(<>) {
	chomp;
	push(@big, new NetAddr::IP ($_));
	}

my @lessbig = Compact(@big);

# print "big:".scalar(@big)."\n";
# print "lessbig:".scalar(@lessbig)."\n";

@big=();
for my $i (@lessbig) {
	print "$i\n";
	}
