#!/usr/bin/env elixir

#In the last exercise of Chapter 7, Lists and Recursion, you wrote a span function. Use it and list comprehensions to return a list of the prime numbers from 2 to n.

# todo how to load other file?

defmodule Prime do
  # https://gist.github.com/aditya7iyengar/2487b9ed7f70ed39aa4afec86c730665
  def is_prime(n) when n in [2, 3], do: true

  def is_prime(n) do
    floored_sqrt = :math.sqrt(n)
      |> Float.floor
      |> round
    !Enum.any?(2..floored_sqrt, &(rem(n, &1) == 0))
  end

  def primes(from, to) do
    for e <- from..to, is_prime(e), do: e
  end
end

Prime.primes(3, 135)
  |> IO.inspect
