defmodule RomanNumerals do
  @moduledoc """
  Roman numerals.
  """

  @buckets %{
    0 => "",

    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C",
    500 => "D",
    1000 => "M",

    4 => "IV",
    9 => "IX",
    40 => "XL",
    90 => "XC",
    400 => "CD",
    900 => "CM"
  }

  defp find_largest_bucket(number) do
    is_full? = fn v,_ -> v <= number end
    full_buckets = :maps.filter(is_full?, @buckets)
    [largest_bucket] = Enum.sort_by(full_buckets, &(-elem(&1,0)))
    |> Enum.take(1)
    largest_bucket
  end

  defp process_bucket(numerals, reminder) when reminder == 0 do
    Enum.join(numerals)
  end

  defp process_bucket(numerals, reminder) do
    {bucket_value, bucket_numerals} = find_largest_bucket(reminder)
    process_bucket(numerals++[bucket_numerals], reminder-bucket_value)
  end

  def romanize(number) when number < 0 do
    raise ArgumentError
  end

  @doc """
  Converts number to its roman numerals representation.

  ## Examples

      iex> RomanNumerals.romanize(1)
      "I"

      iex> RomanNumerals.romanize(5)
      "V"

      iex> RomanNumerals.romanize(4)
      "IV"

      iex> RomanNumerals.romanize(1984)
      "MCMLXXXIV"

      iex> RomanNumerals.romanize(2018)
      "MMXVIII"
  """
  def romanize(number) do
    process_bucket([], number)
  end
end
