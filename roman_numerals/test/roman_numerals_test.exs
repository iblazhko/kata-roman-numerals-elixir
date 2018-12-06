defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "negative numbers cannot be converted to a roman numeral" do
    test_cases = [
      -1,
      -2,
      -100
    ]
    for number <- test_cases do
      assert_raise ArgumentError, fn -> RomanNumerals.romanize(number) end
    end
  end

  test "numbers over 4000 cannot be converted to a roman numeral" do
    test_cases = [
      4000,
      4001,
      5000
    ]
    for number <- test_cases do
      assert_raise ArgumentError, fn -> RomanNumerals.romanize(number) end
    end
  end

  test "number 0 converts to an empty string" do
    assert RomanNumerals.romanize(0) == ""
  end

  test "single letter numerals" do
    test_cases = [
      {    1, "I" },
      {    5, "V" },
      {   10, "X" },
      {   50, "L" },
      {  100, "C" },
      {  500, "D" },
      { 1000, "M" }
    ]
    for {number, roman} <- test_cases do
      assert RomanNumerals.romanize(number) == roman, "#{number} -> #{roman}"
    end
  end

  test "same letter numerals" do
    test_cases = [
      {    2, "II"  },
      {    3, "III" },
      {   20, "XX"  },
      {   30, "XXX" },
      {  200, "CC"  },
      {  300, "CCC" },
      { 2000, "MM"  },
      { 3000, "MMM" }
    ]
    for {number, roman} <- test_cases do
      assert RomanNumerals.romanize(number) == roman, "#{number} -> #{roman}"
    end
  end

  test "subtractive notation" do
    test_cases = [
      {    4, "IV" },
      {    9, "IX" },
      {   40, "XL" },
      {   90, "XC" },
      {  400, "CD" },
      {  900, "CM" }
    ]
    for {number, roman} <- test_cases do
      assert RomanNumerals.romanize(number) == roman, "#{number} -> #{roman}"
    end
  end

  test "mixed numbers should convert using additive pattern" do
    test_cases = [
      {   39, "XXXIX"       },
      {  207, "CCVII"       },
      {  246, "CCXLVI"      },
      { 1066, "MLXVI"       },
      { 1766, "MDCCLXVI"    },
      { 1873, "MDCCCLXXIII" },
      { 1984, "MCMLXXXIV"   },
      { 2018, "MMXVIII"     }
    ]
    for {number, roman} <- test_cases do
      assert RomanNumerals.romanize(number) == roman, "#{number} -> #{roman}"
    end
  end
end
