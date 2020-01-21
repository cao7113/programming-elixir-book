#!/usr/bin/env elixir

file_open = fn
  {:ok, file} -> "First line #{IO.read(file, :line)}"
  # use Erlang File module by :file
  {_, err} -> "Error: #{:file.format_error(err)}"
end

# use Elixir built-in File module
IO.puts file_open.(File.open('README.md'))
IO.puts file_open.(File.open('nonexist'))

# c 'xxx.exs' in iEx
# or elixir 'xxx.exs'
