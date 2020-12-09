defmodule AOC.Day01 do
  def part_1(input) do
    numbers =
      input
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)

    sum = for a <- numbers, b <- numbers, a + b == 2020, do: a * b

    List.first(sum)
  end

  def part_2(input) do
    numbers =
      input
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)

    sum = for a <- numbers, b <- numbers, c <- numbers, a + b + c == 2020, do: a * b * c

    List.first(sum)
  end
end
