defmodule ControlFlow do
  import IO

  def show_all do
    case()
    if_else()
  end

  def case do
    puts "-----------------"
    puts "----- CASE ------"
    puts "-----------------\n"

    puts "Es como el switch"
    puts ~S(
    case {1, 2, 3} do
      {4, 5, 6} ->
        "This clause won't match"
      {1, x, 3} ->
        "This clause will match and bind x to 2 in this clause"
      _ ->
        "This clause would match any value"
    end)
    puts "Hay que considerar el uso del operador ^<variable> cuando se quiera usar en conjunto con variables"
    puts ~S(
      x = 1
      case 10 do
        ^x -> "No va a hacer match"
        _ -> "Siempre va a hacer match"
      end
    )
    x = 1
    case 10 do
      ^x -> "No va a hacer match"
      _ -> "Siempre va a hacer match"
    end

    puts "Tambien permite el uso de guards"
    puts ~S(
      case {1, 2, 3} do
        {1, x, 3} when x > 0 -> "Will match"
        _ -> "Would match, if guard condition were not satisfied"
      end
    )
    puts "hay que considerar que los guards si fallan solo harán que la condición falle"
    puts "
      hd(1)
      ** (ArgumentError) argument error
      case 1 do
        x when hd(x) -> \"Won't match\"
        x -> \"Got #{x}\"
      end
    )"
    puts "Si ninguna condición se cumple aparecerá un error"
    puts "
    case :ok do

      :error -> \"Won't match\"

    end
    ** (CaseClauseError) no case clause matching: :ok
    "
  end

  def if_else do
    puts "--------------------"
    puts "----- IF/ELSE ------"
    puts "--------------------\n"
    puts "Como todo if/else de cualquier lenguaje"
    puts "
    if <condition> do
      <if statement...>
    end
    "
    if true do
      puts "Dentro del cuerpo del if :D"
    end

    puts "Lo mismo con else. Igual a cualquier lenguaje"
    puts "
    if <condition> do
      <if statement...>
    else
      <else statement...>
    end
    "
    if false do
      puts "Dentro del cuerpo del if :D"
    else
      puts "Dentro del cuerpo del else :3"
    end

    puts "Tambien hay una forma corta de esta validación"
    puts "
    if <statement>, do: <if statement...>, else: <else statement>
    "
    if true, do: "Dentro del cuerpo del if :D", else: "Dentro del cuerpo del else :3"
  end


end
