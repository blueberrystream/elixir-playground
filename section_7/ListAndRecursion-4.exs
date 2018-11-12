defmodule MyList do
  def span(from, to), do: _span(from, to, [])
  defp _span(from, to, list) when from == to, do: list ++ [to]
  defp _span(from, to, list) when from < to, do: list ++ [from] ++ _span(from + 1, to, list)
  defp _span(from, to, list) when from > to, do: list ++ [from] ++ _span(from - 1, to, list)
end

"""
iex(2)> MyList.span(1, 4)
[1, 2, 3, 4]
iex(3)> MyList.span(0, 4)
[0, 1, 2, 3, 4]
iex(4)> MyList.span(4, -2)
[4, 3, 2, 1, 0, -1, -2]
"""
