#!/usr/bin/env elixir
#Write a function that takes a list of double-quoted strings and prints each on a separate line, centered in a column that has the width of the longest string. Make sure it works with UTF characters.

strs = ~w[cat zebra elephant]
# find longest
max = Enum.max_by strs, &(String.length(&1))
maxlen = String.length(max)

for str <- strs do
  len = String.length str
  pads = div(maxlen + len, 2) 
  IO.puts String.pad_leading str, pads
end
