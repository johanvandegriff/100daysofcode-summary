#NixNet is cool!
#obfuscated #sh #script!🤔🐚📜
set `head -1 $0|cut -c2-` social.nixnet.services/ amolith/ nix.html \< iframe \> embed script
q=$4@$5tagged/$1;v=echo;b=;f=2;z=1
$v "$7pre$9`cat $0`$7/pre$9$7$11 src=$4$10.js$9$7/$11$9">$6
while [ $f != 1 ]||[ $z -lt 3 ];do
q=`curl -sL $q`
b=$b\ `$v "$q"|grep $4@$5[0-9]|cut -d\" -f6`
q=`$v "$q"|grep ad-m|cut -d\" -f4`
f=`$v "$q"|wc -l`;q=`$v "$q"|tail -1`
z=$((z+1));done;for l in $b;do
$v $7$8 height=650 src=$l/$10$9$7/$8$9
done|uniq>>$6;xdg-open $6
