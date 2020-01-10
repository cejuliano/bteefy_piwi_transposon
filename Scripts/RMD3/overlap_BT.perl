#!/usr/bin/perl
  
open($bt1,"bedtools intersect -wo -a $ARGV[0] -b $ARGV[1] |");
while (<$bt1>) {
    chomp;
    @data = split(/\t/);
    if ($data[6] == 10) {
        print "$data[3]\t$data[4]\t$data[5]\n";
    }
}
close($bt1);