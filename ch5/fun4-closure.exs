#!/usr/bin/env elixir
show_it = fn
  a -> IO.puts inspect a
end

add_n = fn
  n -> (fn other -> n + other end)
end

add_two = add_n.(2)
add_five = add_n.(5)

show_it.(add_two.(3))
show_it.(add_five.(7))


# functions in Elixir automatically carry with them the bindings of variables in the scope in which they are defined. In our example, the variable name is bound in the scope of the outer function. When the inner function is defined, it inherits this scope and carries the binding of name around with it. This is a closure—the scope encloses the bindings of its variables, packaging them into something that can be saved and used later.


#Exercise: Functions-4
#Write a function prefix that takes a string. It should return a new function that takes a second string. When that second function is called, it will return a string containing the first string, a space, and the second string.

prefix = fn
  pre -> (fn suf -> "#{pre} #{suf}" end)
end

IO.puts prefix.("Elixir").("Rocks")
