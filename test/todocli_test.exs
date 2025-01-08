defmodule TodocliTest do
  use ExUnit.Case
  doctest Todocli

  test "greets the world" do
    assert Todocli.hello() == :world
  end
end
