url="https://fosstodon.org/@johanv/tagged/100daysofcode"

post_ids=""
count=2
i=1
while [[ "$count" -ne 1 ]] || [[ "$i" -lt 3 ]]; do
  page=`curl -s "$url"`
  urls=`echo "$page" | grep "Show more" | cut -d\" -f4`
  count=`echo "$urls" | wc -l`
  url=`echo "$urls" | tail -1`
  i=$((i+1))
  post_ids="$post_ids
`echo "$page" | grep 'https://fosstodon.org/@johanv/[0-9]'`"
done

echo '<body style="background-color:#333;color:#fff">
<h1>#100daysofcode Day 100!</h1>'>index.html
echo "$post_ids" | grep -v '^$' | cut -d\" -f6 | while read line; do
  echo '<iframe src="'"$line"'/embed" class="mastodon-embed" style="max-width: 100%; border: 0" width="400" allowfullscreen="allowfullscreen"></iframe><script src="https://fosstodon.org/embed.js" async="async"></script>'
done>>index.html

python3 -m http.server
