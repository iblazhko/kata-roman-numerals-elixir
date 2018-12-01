defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "number 0 converts to an empty string" do
    assert RomanNumerals.romanize(0) == ""
  end

  test "number 1 converts to I" do
    assert RomanNumerals.romanize(1) == "I"
  end

  test "number 5 converts to V" do
    assert RomanNumerals.romanize(5) == "V"
  end

  test "number 2 converts to II" do
    assert RomanNumerals.romanize(2) == "II"
  end

end
