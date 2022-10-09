defmodule AoC202101P1 do
  def main(input) do
    input
    |> get_number_of_increases(0)
  end

  def get_number_of_increases([first, second | tail] = list, number_of_increases) when length(list) > 2 do
    cond do
      first < second -> get_number_of_increases([second | tail], number_of_increases + 1)
      true -> get_number_of_increases([second | tail], number_of_increases)
    end
  end

  def get_number_of_increases([first, second], number_of_increases) do
    cond do
      first < second -> number_of_increases + 1
      true -> number_of_increases
    end
  end

  def online_solution do
    File.stream!("test/AoC202101_part_1_input.txt")
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.to_integer/1)
    |> Stream.chunk_every(2, 1, :discard)
    |> Enum.count(fn [a, b] -> a < b end)
  end
end
