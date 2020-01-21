#!/usr/bin/env iex
#I’m thinking of a number between 1 and 1000.…
#
#The most efficient way to find the number is to guess halfway between the low and high numbers of the range. If our guess is too big, then the answer lies between the bottom of the range and one less than our guess. If our guess is too small, then the answer lies between one more than our guess and the end of the range.
#
#Your API will be guess(actual, range), where range is an Elixir range. Your output should look similar to this:
#
#```
# 	iex> Chop.guess(273, 1..1000)
# 	Is it 500
# 	Is it 250
# 	Is it 375
# 	Is it 312
# 	Is it 281
# 	Is it 265
# 	Is it 273
# 	273
#```
#
#Hints:
#
#You may need to implement helper functions with an additional parameter (the currently guessed number).
#
#The div(a,b) function performs integer division.
#
#Guard clauses are your friends.
#
#Patterns can match the low and high parts of a range (a..b=4..8).

defmodule Chop do
  def guess(n, range) do
    from..to = range
    try(n, from, to, next(from, to))
  end

  def try(n, from, to, current) when current == n or current == from or current == to do
    IO.puts "hit #{current}"
    current
  end

  # too big
  def try(n, from, to, current) when current > n do
    IO.puts "big #{current} with #{from}..#{to}"
    sleep
    try(n, from, current - 1, next(from, current - 1))
  end

  # too small
  def try(n, from, to, current) when current < n do
    IO.puts "small #{current} with #{from}..#{to}"
    sleep
    try(n, current + 1, to, next(current + 1, to))
  end

  def sleep(n \\50) do
    #:timer.sleep(:timer.seconds(1))
    Process.sleep(n)
  end

  def next(from, to) do
    from + div(to - from, 2)
  end
end

# Chop.guess(273, 1..1000)
