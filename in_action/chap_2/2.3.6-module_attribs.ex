defmodule Names do
  @pi = 3.14
  @moduledoc """
  How to name things

  Para hacer que la documentación sea accesible se tiene que compilar el archivo. Esto se logra
  asi:

  elixirc <file_name>.ex

  Esto crea un archivo .bean.
  Cuando se carga el archivo al interprete
  iex <file_name>.ex
  Se cargará la documentación
  """

  @doc """
  Makes a word uppercased
  """
  @spec upper(String) :: String
  def upper(word) do
    String.upcase(word)
  end

end
