defmodule MyList do
  def span(from, to), do: _span(from, to, [])
  defp _span(from, to, list) when from == to, do: list ++ [to]
  defp _span(from, to, list) when from < to, do: list ++ [from] ++ _span(from + 1, to, list)
  defp _span(from, to, list) when from > to, do: list ++ [from] ++ _span(from - 1, to, list)
end

defmodule MyMath do
  def prime(n) do
    span = MyList.span(2, n)
    for x <- span, y <- span, y < x, rem(x, y) != 0, do: x
  end
end

IO.inspect MyMath.prime(30)
