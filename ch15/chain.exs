#!/usr/bin/env elixir

defmodule Chain do
  def counter(nextpid) do
    receive do
      n -> send nextpid, n + 1
    end
  end

  def create_ps(n) do
    task_code = fn _, pid ->
      spawn Chain, :counter, [pid]
    end

    last = Enum.reduce(1..n, self(), task_code)

    send last, 0 

    receive do
      final when is_integer(final) ->
        IO.puts "final num: #{final}"
    end
  end

  def run(n) do
    :timer.tc(Chain, :create_ps, [n])
      |> IO.inspect
  end
end

#Chain.run(1000)

# run like
# elixir -r xx-this.exs -e "Chain.run(100)" 
# elixir --erl "+P 1000000" -r xx-this.exs -e "Chain.run(100)" 
