#!/usr/bin/env elixir

defmodule Msg do
  def echo(sender) do
    receive do
      msg ->
        send sender, msg
    end
  end
end

p1 = spawn Msg, :echo, [self()]
p2 = spawn Msg, :echo, [self()]

send p1, ["Elixir"]
send p2, ["Erlang"]

receive do
  msg ->
    IO.write " #{msg}"
end

# second
receive do
  msg ->
    IO.write " #{msg}"
end

# todo refactor above to support any number subprocesses

IO.puts ""

# in bash:
# for i in {1..30}; do progbook/ch15/ex.exs; done
# keep order ???
