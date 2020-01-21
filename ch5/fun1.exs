#!/usr/bin/env elixir
show_it = fn
  a -> IO.puts inspect a
end

list_concat = fn a, b -> a ++ b end
show_it.(list_concat.([:a, :b], [:c, :d]))

sum = fn a, b, c -> a + b + c end
show_it.(sum.(1, 2, 3))

convert = fn {a, b} -> [a, b] end
show_it.(convert.({:a, :b}))
