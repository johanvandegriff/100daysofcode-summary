#100daysofcode Day 100:
#sh #obfuscated
set `head -1 $0|cut -c2-` johanv/ fosstodon.org/ 100.html \< \> embed iframe script
u=$5@$4tagged/$1;p=;c=2;i=1
echo $7h1$8#$1 $2 $3$7/h1$8>$6
while [ $c != 1 ]||[ $i -lt 3 ];do
s=`curl -sL $u`
p=$p\ `echo "$s"|grep $5@$4[0-9]|cut -d\" -f6`
s=`echo "$s"|grep load-m|cut -d\" -f4`
c=`echo "$s"|wc -l`;u=`echo "$s"|tail -1`
i=$((i+1));done;for l in $p;do
echo $7$10 height=600 src=$l/$9$8$7/$10$8$7$11 src=$5$9.js$8$7/$11$8
done|uniq>>$6;xdg-open $6
