#!/usr/bin/perl


# generate reference feature files for all configs for all samples

@cs=glob("configs/*.conf");
@ss=glob("samples/*.wav");

$sebin = "../SMILExtract";

print "WARNING: All the reference files will be re-generated! This is usually not what you want, this will render the unittests obsolete.. do only if you are absolutely sure what you are about!!\n";
print "Continue? (y/n) \n";
$y=<STDIN>;
if ($y !~ /^y/) { exit -1; }

foreach $c (@cs) {
  foreach $s (@ss) {
    $c =~ /\/(.+?)\.conf$/; $co=$1;
    $s =~ /\/(.+?)\.wav$/; $wa=$1;
    $ref = "references/".$co."__".$wa.".reference";
    print "Ref: $ref ... ";
    unlink($ref);
    $r=system("$sebin -C $c -I $s -O $ref 2>/dev/null");
    if ($r) { print "ERROR!\n"; exit -2; } else { print "OK\n"; }
  }
}
