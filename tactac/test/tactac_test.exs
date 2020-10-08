defmodule TactacTest do
  use ExUnit.Case
  doctest Tactac

  test "greets the world" do
    assert Tactac.hello() == :world
  end
end
