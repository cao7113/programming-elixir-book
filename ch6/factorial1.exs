#!/usr/bin/env iex

defmodule Factorial do
  # order is important, topdown pattern matching
  def of(0), do: 1
  def of(n), do: n * of(n-1)
end

#Factorial.of(5)
