#!/usr/bin/perl

$DEPTH_THRESHOLD = 10;
$OVERLAP_LENGTH = 10;

open($bed, "<$ARGV[0]");
while (<$bed>) {
    chomp;
    @data=split(/\t/);
    $tid = $data[0];
    $start = $data[1];
    $end = $data[2];

    $readcounts{$tid}{$start}++;
    if ($readcounts{$tid}{$start} > $DEPTH_THRESHOLD && !(exists $passed{$tid}{$start})) {
        print "$tid\t$start\t".($start+$OVERLAP_LENGTH)."\n";
        $passed{$tid}{$start} = 1;
    }
}
close($bed);