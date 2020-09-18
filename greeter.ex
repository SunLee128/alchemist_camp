defmodule Greeter do
  def greet do
    name = IO.gets("Hi, What is your name?\n ")

    case String.trim(name) do
      "Sun" ->
        IO.puts("That is the cooleast name!!")

      name ->
        IO.puts("Hi #{name}, nice to meet you")
    end
  end
end
