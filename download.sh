u="https://fosstodon.org/@johanv/tagged/100daysofcode"
p=""
c=2
i=1
while [ "$c" -ne 1 ]||[ "$i" -lt 3 ];do
a=`curl -s "$u"`
s=`echo "$a"|grep "Show more"|cut -d\" -f4`
c=`echo "$s"|wc -l`
u=`echo "$s"|tail -1`
i=$((i+1))
p="$p
`echo "$a"|grep 'https://fosstodon.org/@johanv/[0-9]'`"
done
echo '<body style="background-color:#333;color:#fff">
<h1>#100daysofcode Day 100!</h1>'>index.html
echo "$p"|grep -v '^$'|cut -d\" -f6|while read l;do
echo '<iframe src="'"$l"'/embed" class="mastodon-embed" style="max-width: 100%; border: 0" width="400" allowfullscreen="allowfullscreen"></iframe><script src="https://fosstodon.org/embed.js" async="async"></script>'
done>>index.html
python3 -m http.server
