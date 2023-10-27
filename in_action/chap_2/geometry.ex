defmodule Geometry do

  defmodule Square do

    def area(side) do
      Integer.pow(side, 2)
    end

  end

end

defmodule Geometry.Circle do

  def area(radious) do
    :math.pi()
    |>Calculator.multiply(radious)
    |>Calculator.pow
  end

end

defmodule Calculator do

  def multiply(a,b) do
    a * b
  end

  def sum(a,b), do: a + b # inline function

  def pow(base, exponent \\ 2), do: :math.pow(base, exponent)
end
