#!/usr/bin/env elixir

defmodule Parse do
  def num([?-|tail]), do: _number(tail, 0) * -1
  def num([?+|tail]), do: _number(tail, 0)
  def num(str), do: _number(str, 0)

  defp _number([], val), do: val
  defp _number([d | tail], val)
    when d in '0123456789' do
      # good design here!
      _number(tail, val * 10 + d - ?0)
    end
  defp _number([d|_], _) do
    raise "unknow digit #{d}"
  end
end

Parse.num('-123') |> IO.inspect
Parse.num('+123') |> IO.inspect
Parse.num('a23') |> IO.inspect
