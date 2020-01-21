#!/usr/bin/env elixir

defmodule Spawn1 do
  def greet do
    receive do
      {sender, msg} -> 
        send sender, {:ok, "Hello, #{msg}"}
        greet()
    end
  end
end

# acts as a client
pid = spawn(Spawn1, :greet, [])
#require IEx
#IEx.pry
IO.puts "client pid: #{inspect(pid)}"

send pid, {self(), "World!"}
receive do
  {:ok, msg} -> IO.puts msg
end

send pid, {self(), "Elixir!"}
receive do
  {:ok, msg} -> IO.puts msg
  after 500 ->
      IO.puts "The greeter has gone"
end

:observer.start()
Process.sleep(1000* 60 * 10)
IO.puts "==end main"
