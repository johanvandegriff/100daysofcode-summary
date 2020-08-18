#100daysofcode Day 100:
#obfuscated #sh script fun :)
set `head -1 $0|cut -c2-` johanv https://fosstodon.org/ index.html \< \> \" allowfullscreen
u="$5@johanv/tagged/$1"
p=""
c=2
i=1
while [ "$c" -ne 1 ]||[ "$i" -lt 3 ];do
s=`curl -s "$u"`
p="$p
"`echo "$s"|grep "$5@johanv/[0-9]"`
s=`echo "$s"|grep "Show more"|cut -d\" -f4`
c=`echo "$s"|wc -l`
u=`echo "$s"|tail -1`
i=$((i+1))
done
echo '<body style="background-color:#333;color:#fff">'>$6
echo "${7}h1$8#$1 $2 $3$7/h1$8"|tr : !>>$6
echo "$p"|grep -v ^$|cut -d$9 -f6|while read l;do
echo "${7}iframe src=$9$l/embed$9 class=\"mastodon-embed$9 style=\"max-width: 100%; border: 0$9 width=\"400$9 $10=\"$10$9$8$7/iframe$8${7}script src=$9${5}embed.js$9 async=\"async$9$8$7/script$8"
done>>$6
python3 -m http.server
