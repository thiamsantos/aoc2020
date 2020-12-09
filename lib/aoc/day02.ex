defmodule AOC.Day02 do
  import NimbleParsec

  defparsec :parse,
            integer(min: 1)
            |> ignore(string("-"))
            |> integer(min: 1)
            |> ignore(string(" "))
            |> utf8_string([], 1)
            |> ignore(string(":"))
            |> ignore(string(" "))
            |> utf8_string([], min: 1)

  def part_1(input) do
    input
    |> parse_input()
    |> Enum.filter(&valid_password_by_count?/1)
    |> Enum.count()
  end

  def part_2(input) do
    input
    |> parse_input()
    |> Enum.filter(&valid_password_by_position?/1)
    |> Enum.count()
  end

  defp parse_input(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(fn line ->
      {:ok, [min, max, letter, password], _rest, _context, _line, _column} = parse(line)

      {min, max, letter, password}
    end)
  end

  defp valid_password_by_count?({min, max, letter, password}) do
    amount =
      password
      |> String.graphemes()
      |> Enum.filter(&match?(^letter, &1))
      |> Enum.count()

    amount >= min and amount <= max
  end

  defp valid_password_by_position?({first_position, second_position, letter, password}) do
    letters = String.graphemes(password)

    first_ocurrence = Enum.at(letters, first_position - 1) == letter

    second_ocurrence = Enum.at(letters, second_position - 1) == letter

    case {first_ocurrence, second_ocurrence} do
      {true, false} -> true
      {false, true} -> true
      _ -> false
    end
  end
end
