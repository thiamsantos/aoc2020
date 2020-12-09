defmodule AOC do
  def read_input!(name) do
    File.read!(Application.app_dir(:aoc, ["priv", name]))
  end
end
