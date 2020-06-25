import tables, strutils

var wordFrequencies = initCountTable[string]()

for line in stdin.lines:
  for word in line.split(", "):
    wordFrequencies.inc(word)

echo "The most frequent word is '", wordFrequencies.largest, "'"
