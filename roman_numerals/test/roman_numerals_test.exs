defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "negative numbers cannot be converted to a roman numeral" do
    assert_raise ArgumentError, fn -> RomanNumerals.romanize(-1) end
  end

  test "numbers over 4000 cannot be converted to a roman numeral" do
    assert_raise ArgumentError, fn -> RomanNumerals.romanize(4000) end
    assert_raise ArgumentError, fn -> RomanNumerals.romanize(4001) end
    assert_raise ArgumentError, fn -> RomanNumerals.romanize(5000) end
  end

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

  test "same letter numerals: number 2 converts to II" do
    assert RomanNumerals.romanize(2) == "II"
  end

  test "same letter numerals: number 3 converts to III" do
    assert RomanNumerals.romanize(3) == "III"
  end

  test "same letter numerals: number 20 converts to XX" do
    assert RomanNumerals.romanize(20) == "XX"
  end

  test "same letter numerals: number 30 converts to XXX" do
    assert RomanNumerals.romanize(30) == "XXX"
  end

  test "same letter numerals: number 200 converts to CC" do
    assert RomanNumerals.romanize(200) == "CC"
  end

  test "same letter numerals: number 300 converts to CCC" do
    assert RomanNumerals.romanize(300) == "CCC"
  end

  test "same letter numerals: number 2000 converts to MM" do
    assert RomanNumerals.romanize(2000) == "MM"
  end

  test "same letter numerals: number 3000 converts to MMM" do
    assert RomanNumerals.romanize(3000) == "MMM"
  end

  test "subtractive notation: number 4 converts to IV" do
    assert RomanNumerals.romanize(4) == "IV"
  end

  test "subtractive notation: number 9 converts to IX" do
    assert RomanNumerals.romanize(9) == "IX"
  end

  test "subtractive notation: number 40 converts to XC" do
    assert RomanNumerals.romanize(40) == "XL"
  end

  test "subtractive notation: number 90 converts to XC" do
    assert RomanNumerals.romanize(90) == "XC"
  end

  test "subtractive notation: number 400 converts to CD" do
    assert RomanNumerals.romanize(400) == "CD"
  end

  test "subtractive notation: number 900 converts to CM" do
    assert RomanNumerals.romanize(900) == "CM"
  end

  test "mixed numbers should convert using additive pattern" do
    assert RomanNumerals.romanize(39) == "XXXIX"
    assert RomanNumerals.romanize(207) == "CCVII"
    assert RomanNumerals.romanize(246) == "CCXLVI"
    assert RomanNumerals.romanize(1066) == "MLXVI"
    assert RomanNumerals.romanize(1776) == "MDCCLXXVI"
    assert RomanNumerals.romanize(1873) == "MDCCCLXXIII"
    assert RomanNumerals.romanize(1984) == "MCMLXXXIV"
    assert RomanNumerals.romanize(2018) == "MMXVIII"
  end
end
