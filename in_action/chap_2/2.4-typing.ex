defmodule Typing do

  import IO # hace que el modulo IO sea accesible. Es como un namespace

  def show_all do
    atoms()
    tuple()
    map()
  end

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

  def map do
    puts "Se puede declarar un map con la siguiente sintaxis"
    puts "%{:name => \"elixir\", \"age\" => 20, \"alive\" => true}"
    my_map = %{:name => "elixir", "age" => 20, "alive" => true}
    print_map my_map

    puts "Si las llaves son todas atomos se puede declarar un mapa de la siguiente forma"
    puts "%{name: elixir, age: 20, alive: true}"
    my_map_w_atoms = %{name: "elixir", age: 20, alive: true}
    print_map my_map_w_atoms

    puts "Ingresas a los datos del map con la sintaxis my_map[key]"
    puts "my_map[:name] => #{my_map["age"]}"
    puts "my_map_w_atoms[:name] => #{my_map[:name]}"

    puts "Se puede modificar un campo con la sintaxix %{ my_map | key => value }"
    puts "Esta forma retorna un nuevo map; no modifica el existente. Recordar que elixir maneja los datos como inmutables"
    my_new_map = %{ my_map | "age"=>30 }
    print_map my_new_map

    puts "Tambien se puede usar el modulo Map para manejar estas estructuras"
    my_new_map = Map.delete(my_new_map, "age")
    print_map my_new_map
  end

  def list do
    puts "Para declarar una lista se usa [element, element]"
    my_list = ["item1", "item2"]
    print_list my_list

    puts "Para agregar un elemento a la lista se usa: list ++ [item]"
    my_list = my_list ++ ["item3"]
    print_list my_list
    puts "Cabe señalar que una lista puede agregarse cualquier tipo de dato, por lo que list ++ value va a funcionar"

    puts "Es importante recordar que en elixir las listas son SingleLinked lo que hace que agregar un elemento al final
    de una lista sea un proceso costoso ya que tiene que recorrer todo para llegar al final"
    puts "La mejor forma es hacer un reverse de la lista, agregar al principio usando la notación [item | list] y hacer
    el reverse nuevamente"

    my_list = Enum.reverse(my_list)
    puts "reversed list: #{print_list my_list}"
    my_list = ["item4" | my_list]
    puts "Se agrega item al principio: #{print_list my_list}"
    my_list = Enum.reverse(my_list)
    puts "Se hace reverse nuevamente: #{print_list my_list}"
  end

  @spec print_tuple(tuple()) :: :ok
  defp print_tuple(tupl) do
    Tuple.to_list(tupl)
    |>Enum.each(fn element -> puts element end)
    puts "\n"
  end

  @spec print_map(map()) :: :ok
  defp print_map(map) do
    Enum.each(map, fn ({key, value}) -> puts "key: #{key}, Value: #{value}" end)
    puts "\n"
  end

  @spec print_list(list(any())) :: :ok
  defp print_list(list) do
    Enum.each(list, fn element -> puts element end)
  end

end
