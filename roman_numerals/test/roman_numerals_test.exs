defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "number 0 converts to an empty string" do
    assert RomanNumerals.romanize(0) == ""
  end
end
