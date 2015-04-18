#!/usr/bin/perl

# generate reference feature files for all configs for all samples

@cs=glob("configs/*.conf");
@ss=glob("samples/*.wav");

$sebin = "../SMILExtract";

$testlog="";
$fail = 0;

mkdir("test");
foreach $c (@cs) {
  foreach $s (@ss) {
    $c =~ /\/(.+?)\.conf$/; $co=$1;
    $s =~ /\/(.+?)\.wav$/; $wa=$1;
    $out = "test/".$co."__".$wa.".output";
    $ref = "references/".$co."__".$wa.".reference";
    $log = "test/".$co."__".$wa.".log";
    print "Extracting: $out ... "; $testlog .= $co."__".$wa." ... ";
    unlink($out); unlink($log);
    $r=system("$sebin -logfile \"$log\" -C $c -I $s -O $out 2>/dev/null");
    if ($r) { 
      print "ERROR!\n";
      $testlog.="FAIL (smile error, see log)\n"; $fail++;
    } else { 
      # compare
      $x = system("diff $ref $out > /dev/null");      
      if ($x == 0) {      
        print "OK\n";
        $testlog.="pass\n";
      } elsif ($x == 256) {
        print "FAIL\n";
        $testlog.="FAIL (text feature file mismatch)\n"; $fail++;
      } elsif ($x == 512) {
        print "FAIL\n";
        $testlog.="FAIL (binary feature file mismatch)\n"; $fail++;
      } else {
        print "FAIL\n";
        $testlog.="FAIL (misc. feature file mismatch)\n"; $fail++;
      }
    }
  }
}

open(F,">test.log");
print F $testlog;
close(F);

print "\n---- Test RESULT: ---- \n\n";
print $testlog;
print "\n---- SUMMARY: ----\n";
if ($fail > 0) {
  print "  $fail FAILED !! Please see 'test.log' and check the smile log files in test/\*.log ...\n\n ";
} else {
  print "  PASSED \n";
}

