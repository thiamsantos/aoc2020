defmodule AOC.Day01Test do
  use ExUnit.Case, async: true

  alias AOC.Day01

  describe "part_1/1" do
    test "two entries that sum to 2020 multiplied" do
      input = """
      1721
      979
      366
      299
      675
      1456
      """

      assert Day01.part_1(input) == 514_579
    end

    test "from input" do
      input = AOC.read_input!("input_01.txt")
      assert Day01.part_1(input) == 926_464
    end
  end

  describe "part_2/1" do
    test "product of the three entries that sum to 2020" do
      input = """
      1721
      979
      366
      299
      675
      1456
      """

      assert Day01.part_2(input) == 241_861_950
    end

    test "from input" do
      input = AOC.read_input!("input_01.txt")
      assert Day01.part_2(input) == 65_656_536
    end
  end
end
