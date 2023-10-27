defmodule ReverseName.CLI do
  @moduledoc """
  Documentation for `ReverseName.CLI`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ReverseName.CLI.main(["elixir"])
      :ok

  """
  def main(args \\ []) do
    args
    |>hd
    |>String.reverse
    |>IO.puts
  end
end
