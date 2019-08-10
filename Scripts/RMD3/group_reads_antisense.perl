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

    $readcounts{$tid}{$end}++;
    if ($readcounts{$tid}{$end} > $DEPTH_THRESHOLD && !(exists $passed{$tid}{$end})) {
        print "$tid\t".($end-$OVERLAP_LENGTH)."\t$end\n";
        $passed{$tid}{$end} = 1;
    }
}
close($bed);