#!/usr/bin/env elixir
# use tail-call optimization

defmodule TailRecurse do
  def fab(n), do: _fab(n, 1)
  defp _fab(0, acc), do: acc
  defp _fab(n, acc), do: _fab(n - 1, n * acc)
end

TailRecurse.fab(100) |> IO.inspect
