defmodule AOC.Day02Test do
  use ExUnit.Case, async: true

  alias AOC.Day02

  describe "part_1/1" do
    test "count valid passwords" do
      input = """
      1-3 a: abcde
      1-3 b: cdefg
      2-9 c: ccccccccc
      """

      assert Day02.part_1(input) == 2
    end

    test "from input" do
      input = AOC.read_input!("input_02.txt")
      assert Day02.part_1(input) == 614
    end
  end

  describe "part_2/1" do
    test "count valid passwords by position" do
      input = """
      1-3 a: abcde
      1-3 b: cdefg
      2-9 c: ccccccccc
      """

      assert Day02.part_2(input) == 1
    end

    test "from input" do
      input = AOC.read_input!("input_02.txt")
      assert Day02.part_2(input) == 354
    end
  end
end
