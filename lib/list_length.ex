defmodule ListLength do
  @moduledoc """
    Provides a function to count how much elements are in the list recursively
  """

  @doc """
    Counts how much elements are in the given list

    ## Parameters
    list: A list of elements

    ## Examples
    \tiex> ListLength.call(["s", :a, 1, false, [1, 2, 3]])
    \t5
  """
  @spec call(list()) :: integer()
  def call(list) do
    count_elem(list, 0)
  end

  @spec count_elem(list(), integer()) :: integer()
  defp count_elem([], acc), do: acc

  @spec count_elem(list(), integer()) :: integer()
  defp count_elem([_head|tail], acc) do
    count_elem(tail, acc + 1)
  end
end
