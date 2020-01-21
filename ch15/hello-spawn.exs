#!/usr/bin/env elixir

defmodule SpawnBasic do
  def greet do
    IO.puts "Hello"
  end
end

spawn SpawnBasic, :greet, []

Process.sleep 500
IO.puts "output from main"
