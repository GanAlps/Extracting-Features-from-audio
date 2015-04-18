#!/usr/bin/perl

$corpus = "test";

$input_path = "../../test";
$ext = "htk";
$input_pattern="$input_path/*.$ext";
$output_path="../../test/output";
$work_path="../../test/work";

$htkstd = "../util/htk-standardize";
$SMILExtract = "../../SMILExtract";
$SEconf = "../../conf";

use File::Basename;

## generate file list of input files:
mkdir($work_path);
print "Generating input files list ... ";
@files = glob("$input_pattern");
open(FILE,">$work_path/in.flist");
foreach $f (@files) {
  print FILE "$f\n";
}
close(FILE);
print "DONE\n";

## compute mean/variance:
system("$htkstd $work_path/in.flist - - $work_path/$corpus"."_mvn_global.dat");

## compute histograms and do transform:
mkdir ($output_path);
foreach $f (@files) {
  $in = $f;
  print "Processing '$f' ... ";
#  $heq = $f; #$heq =~ s/^\Q$input_path\E\/*(.+?)\.$ext$/$work_path\/$corpus.$1.heq/;
  $heq = $work_path."/".basename($f); $heq =~ s/\.$ext/.heq/;
  $out = $output_path."/".basename($f);

  # compute mvn range of turn
  system("$SMILExtract -l 1 -C \"$SEconf/HeqAnalyseMVN.conf\" -I \"$in\" -S \"$heq\"");
  # analysis , i.e. compute histogram
  system("$SMILExtract -l 1 -C \"$SEconf/HeqAnalyse.conf\" -I \"$in\" -S \"$heq\"");
  # actual transform using computed histogram
  system("$SMILExtract -l 1 -C \"$SEconf/HeqTransform.conf\" -I \"$in\" -S \"$heq\" -O \"$out\"");
  print "OK\n";
}
print "\n";


