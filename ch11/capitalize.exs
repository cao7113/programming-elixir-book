#!/usr/bin/env elixir
#Write a function to capitalize the sentences in a string. Each sentence is terminated by a period and a space. Right now, the case of the characters in the string is random.
#capitalize_sentences("oh. a DOG. woof. ")
defmodule Ex do
  def cap(str) do
    str |> String.split(~r{\.\s})
        #|> Enum.map(&(String.downcase(&1)))
        |> Enum.map(&(String.capitalize(&1)))
        |> Enum.join(". ")
  end
end

IO.puts Ex.cap("oh. a DOG. woof. ")

# todo tax file
