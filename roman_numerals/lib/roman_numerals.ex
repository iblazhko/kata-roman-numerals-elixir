defmodule RomanNumerals do
  @moduledoc """
  Roman numerals.
  """

  @doc """
  Converts number to its roman numerals representation.

  ## Examples

  //    iex> RomanNumerals.romanize(10)
  //    X

  //    iex> RomanNumerals.romanize(1954)
  //    MCMLIV
  """
  def romanize(number) do
    case number do
      0 -> ""
      1 -> "I"
    end
  end
end
