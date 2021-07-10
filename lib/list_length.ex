defmodule ListLength do
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
