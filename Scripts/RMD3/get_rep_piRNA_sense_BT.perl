#!/usr/bin/perl
  
$DEPTH_THRESHOLD=0;

$cnt=0;
open ($bam, "samtools view $ARGV[0] |");
while (<$bam>) {
    chomp;
    @data = split(/\t/);
    $chr = $data[2];
    $pos = $data[3];
    $seq = $data[9];

    if ($chr eq "*") {
        $unmapped{$seq}++;
        next;
    }

    $counts{$chr}{$pos}{$seq}++;
#    $cnt++;

#    if ($cnt % 100000 == 0) {
#        print STDERR "Processed $cnt lines...\n";
#    }
}
close($bam);

foreach $chr (keys %counts) {
    foreach $pos (keys %{ $counts{$chr} }) {

        $max = 0;
        $maxseq = "";
        $total=0;
        foreach $seq (keys %{ $counts{$chr}{$pos} }) {
            if ($counts{$chr}{$pos}{$seq} > $max) {
                $max = $counts{$chr}{$pos}{$seq};
                $maxseq = $seq;
            }

            $total += $counts{$chr}{$pos}{$seq};
        }

        if ($total > $DEPTH_THRESHOLD) {print "$chr\t$pos\t$total\t$maxseq\n";}
    }
}

foreach $seq (keys %unmapped) {
    print "*\t*\t$unmapped{$seq}\t$seq\n";
}