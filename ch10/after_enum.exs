#!/usr/bin/env elixir

#Implement the following Enum functions using no library functions or list comprehensions: all?, each, filter, split, and take. You may need to use an if statement to implement filter. The syntax for this is

defmodule MyEnum do
  def filter(col, fun) do
    for e <- col, fun.(e), do: e 
  end
end

IO.puts "my enum"
Enum.to_list(1..5)
  |> MyEnum.filter(&(&1 > 3))
  |> IO.inspect

IO.puts "std enum"
Enum.to_list(1..5)
  |> Enum.filter(&(&1 > 3))
  |> IO.inspect
#https://github.com/elixir-lang/elixir/blob/master/lib/elixir/lib/enum.ex#L902

# Flatten list
#(Hard) Write a flatten(list) function that takes a list that may contain any number of sublists, which themselves may contain sublists, to any depth. It returns the elements of these lists as a flat list.
#MyList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
#Hint: You may have to use Enum.reverse to get your result in the correct order.

defmodule MyList do
  def flatten(_col) do
    # todo
  end
end

IO.puts "my list"
[ 1, [ 2, 3, [4] ], 5, [[[6]]]]
  |> MyList.flatten
  |> IO.inspect

IO.puts "std list"
[ 1, [ 2, 3, [4] ], 5, [[[6]]]]
  |> List.flatten
  |> IO.inspect
