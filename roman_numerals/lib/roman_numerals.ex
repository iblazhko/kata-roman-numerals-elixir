defmodule RomanNumerals do
  @moduledoc """
  Roman numerals.
  """

  @numerals %{
    0 => "",
    1 => "I",
    2 => "II",
    5 => "V"}

  @doc """
  Converts number to its roman numerals representation.

  ## Examples

  //    iex> RomanNumerals.romanize(10)
  //    X

  //    iex> RomanNumerals.romanize(1954)
  //    MCMLIV
  """
  def romanize(number) do
    @numerals[number]
  end
end
