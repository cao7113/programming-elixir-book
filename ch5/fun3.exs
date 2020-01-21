#!/usr/bin/env elixir
# Write a function that takes three arguments. If the first two arezero, return “FizzBuzz.” If the first is zero, return “Fizz.” If thesecond is zero, return “Buzz.” Otherwise return the thirdargument. Do not use any language features that we haven’t yetcovered in this book.

fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, rest -> rest 
end

#The operator rem(a, b) returns the remainder after dividing a by b. Write a function that takes a single integer (n) and calls the function in the previous exercise, passing it rem(n,3), rem(n,5), and n. Call it seven times with the arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz, 16.”

call3 = fn
  n -> IO.puts fizz_buzz.(rem(n,3), rem(n, 5), n) 
end

call3.(10)
call3.(11)
call3.(12)
call3.(13)
call3.(14)
call3.(15)
call3.(16)
