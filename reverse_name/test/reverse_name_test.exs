defmodule ReverseName.CLI.Test do
  use ExUnit.Case
  doctest ReverseName.CLI

  test "greets the world" do
    assert ReverseName.CLI.main(["name"]) == :ok
  end
end
