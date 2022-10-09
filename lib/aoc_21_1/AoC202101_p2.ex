defmodule AoC202101P2 do

  def main(input) do
    input
    |> get_number_of_increases(0)
  end

  def get_number_of_increases([first, second, third, fourth | tail] = list, number_of_increases) when length(list) > 4 do
    cond do
      first + second + third < second + third + fourth
        -> get_number_of_increases([second, third, fourth | tail], number_of_increases + 1)
      true
        -> get_number_of_increases([second, third, fourth | tail], number_of_increases)
    end
  end


  def get_number_of_increases([first, second, third, fourth], number_of_increases) do
    cond do
      first + second + third < second + third + fourth -> number_of_increases + 1
      true -> number_of_increases
    end
  end
end
