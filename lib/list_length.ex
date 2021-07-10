defmodule ListLength do
  def call(list) do
    count_elem(list, 0)
  end

  defp count_elem([], acc), do: acc

  defp count_elem([_head|tail], acc) do
    count_elem(tail, acc + 1)
  end
end
