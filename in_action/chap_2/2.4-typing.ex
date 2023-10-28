defmodule Typing do

  import IO # hace que el modulo IO sea accesible. Es como un namespace

  def atoms do
    puts "los atoms son constantes que su valor es su nombre. Comienzan con : y el valor"
    at = :name
    puts at
    puts "el nombre puede llevar espacios y se agregan \"\" para delimirar el nombre"
    puts "ejemplo: :\"este es un atom\""
    long_named = :"a full atom name"
    puts long_named
  end

  def tuple do
    puts "declare a tuple as {\"data\", 8, true}"
    my_tuple = {"name", 13, false}
    print_tuple my_tuple
    puts "to get data from tuple use elem function. Example: elem(my_tuple, 0)"
    puts elem(my_tuple, 0)
    puts "to change data use function put_elem. Example: put_elem()"
    new_my_tuple = put_elem(my_tuple, 0, "new name")
    print_tuple new_my_tuple
  end

  @spec print_tuple(tuple) :: :ok
  defp print_tuple(tupl) do
    Tuple.to_list(tupl)
    |>Enum.each(fn element -> puts element end)
    puts("\n")
  end

end
