defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "number 0 converts to an empty string" do
    assert RomanNumerals.romanize(0) == ""
  end

  test "single letter numerals: number 1 converts to I" do
    assert RomanNumerals.romanize(1) == "I"
  end

  test "single letter numerals: number 5 converts to V" do
    assert RomanNumerals.romanize(5) == "V"
  end

  test "single letter numerals: number 10 converts to X" do
    assert RomanNumerals.romanize(10) == "X"
  end

  test "single letter numerals: number 50 converts to L" do
    assert RomanNumerals.romanize(50) == "L"
  end

  test "single letter numerals: number 100 converts to C" do
    assert RomanNumerals.romanize(100) == "C"
  end

  test "single letter numerals: number 500 converts to D" do
    assert RomanNumerals.romanize(500) == "D"
  end

  test "single letter numerals: number 1000 converts to M" do
    assert RomanNumerals.romanize(1000) == "M"
  end

  test "number 2 converts to II" do
    assert RomanNumerals.romanize(2) == "II"
  end

  test "number 4 converts to IV" do
    assert RomanNumerals.romanize(4) == "IV"
  end
end
