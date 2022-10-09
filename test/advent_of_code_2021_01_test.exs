defmodule AdventOfCodeElixir202101Test do
  use ExUnit.Case
  doctest AoC202101P1
  doctest AoC202101P2

  test "sample puzzle input == 7" do
    assert AoC202101P1
           .main([199, 200, 208, 210, 200, 207, 240, 269, 260, 263]) == 7
  end

  test "sample puzzle input 2 == 7" do
    assert AoC202101P1
           .main([201, 200, 208, 210, 200, 207, 240, 269, 271, 273]) == 7
  end

  test "mypuzzleinput part 1" do
    {:ok, content} = File.read("test/AoC202101_part_1_input.txt")
    my_input =
      String.split(content, "\n", trim: true)
      |> Enum.map(&String.to_integer/1)

    assert AoC202101P1.main(my_input) == 1791
  end

  test "online solution part 1" do
    assert AoC202101P1.online_solution == 1791
  end

  test "sample puzzle input part 2 == 5" do
    assert AoC202101P2
           .main([199, 200, 208, 210, 200, 207, 240, 269, 260, 263]) == 5
  end

  test "mypuzzleinput part 2" do
    {:ok, content} = File.read("test/AoC202101_part_1_input.txt")
    my_input =
      String.split(content, "\n", trim: true)
      |> Enum.map(&String.to_integer/1)

    assert AoC202101P2.main(my_input) == 1791
  end
end
