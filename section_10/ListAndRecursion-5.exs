defmodule MyEnum do
  def all?(enum, func), do: _all?(enum, func, true)
  defp _all?(_, _, acc) when acc == false, do: false
  defp _all?([head | tail], func, acc), do: _all?(tail, func, acc && func.(head))
  defp _all?([], _, acc), do: acc

  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end
  def each([], _), do: :ok

  def filter(enum, func), do: _filter(enum, func, [])
  defp _filter([head | tail], func, filtered) do
    if func.(head) do
      filtered = filtered ++ [head]
    end
    _filter(tail, func, filtered)
  end
  defp _filter([], _, filtered), do: filtered
end

"""
[MyEnum]
iex(5)> MyEnum.all? [1,2,3,4], &(&1 > 0)
true
iex(6)> MyEnum.all? [1,2,3,4,-1], &(&1 > 0)
false
iex(7)> MyEnum.all? [-5,1,2,3,4,10], &(&1 > 0)
false
iex(8)>

[MyEnum]
iex(9)> MyEnum.each [1,2,3,4,5], &(IO.puts &1)
1
2
3
4
5
:ok
iex(10)> MyEnum.each [1,2,3,4,5], &(&1 + 1)
:ok

[MyEnum]
iex(12)> MyEnum.filter [1,2,3,4], &(&1 > 1)
[2, 3, 4]
iex(13)> MyEnum.filter [1,2,3,4], &(&1 > 3)
[4]
"""
