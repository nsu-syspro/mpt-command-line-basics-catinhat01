export combined=$(mktemp -d)
tar -xf data/archive-part1.tar -C "$combined"
unzip data/archive-part2.zip -d "$combined"
tar -czf data/archive-combined.tar.gz -C "$combined" .
rm -rf "$combined"