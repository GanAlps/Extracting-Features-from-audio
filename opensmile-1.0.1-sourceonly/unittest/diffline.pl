
my @att;

#$t = ",2.73";
$t="";

open(F,"<$ARGV[0]");
while(<F>) {
  if ($_=~/\@attribute ([^ ]+) /) {
    push(@att,$1);
  }
  if ($_=~/^'[^']+'$t/) { chop;
    $l1 = $_; 
    last;
  }
}
close(F);

open(F,"<$ARGV[1]");
while(<F>) {
  if ($_=~/^'[^']+'$t/) { chop;
    $l2 = $_; 
    last;
  }
}
close(F);

@L1 = split(/,/,$l1);
@L2 = split(/,/,$l2);

$nd=0;
for ($i=0; $i<=$#L1; $i++) {
  if ($L1[$i] != $L2[$i]) {
     print "'$att[$i]' :: 1=$L1[$i]  2=$L2[$i] \n";
    $nd++;
  }
}
print "nd: $nd\n";
