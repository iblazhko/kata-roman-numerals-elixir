defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  defp assert_out_of_range(test_cases) do
    for number <- test_cases do
      assert_raise ArgumentError, fn -> RomanNumerals.romanize(number) end
    end
  end

  defp assert_romanized(test_cases) do
    for {number, roman} <- test_cases do
      assert RomanNumerals.romanize(number) == roman, "#{number} -> #{roman}"
    end
  end

  test "negative numbers cannot be converted to a roman numeral" do
    assert_out_of_range([
      -1,
      -2,
      -100
    ])
  end

  test "numbers over 4000 cannot be converted to a roman numeral" do
    assert_out_of_range([
      4000,
      4001,
      5000
    ])
  end

  test "number 0 converts to an empty string" do
    assert RomanNumerals.romanize(0) == ""
  end

  test "single letter numerals" do
    assert_romanized([
      {    1, "I" },
      {    5, "V" },
      {   10, "X" },
      {   50, "L" },
      {  100, "C" },
      {  500, "D" },
      { 1000, "M" }
    ])
  end

  test "same letter numerals" do
    assert_romanized([
      {    2, "II"  },
      {    3, "III" },
      {   20, "XX"  },
      {   30, "XXX" },
      {  200, "CC"  },
      {  300, "CCC" },
      { 2000, "MM"  },
      { 3000, "MMM" }
    ])
  end

  test "subtractive notation" do
    assert_romanized([
      {    4, "IV" },
      {    9, "IX" },
      {   40, "XL" },
      {   90, "XC" },
      {  400, "CD" },
      {  900, "CM" }
    ])
  end

  test "mixed numbers should convert using additive pattern" do
    assert_romanized([
      {   39, "XXXIX"       },
      {  207, "CCVII"       },
      {  246, "CCXLVI"      },
      { 1066, "MLXVI"       },
      { 1766, "MDCCLXVI"    },
      { 1873, "MDCCCLXXIII" },
      { 1984, "MCMLXXXIV"   },
      { 2018, "MMXVIII"     }
    ])
  end
end
