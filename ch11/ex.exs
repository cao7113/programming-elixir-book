#!/usr/bin/env elixir
#Write a function that returns true if a single-quoted string contains only printable ASCII characters (space through tilde)

defmodule Print do
  def all_ascii(str) do
    Enum.all?(str, &(&1 >= ?\s && &1 <= ?~))
  end
end

IO.inspect Print.all_ascii('abch& j')
IO.inspect Print.all_ascii('中国')


# todo 2,3,4
