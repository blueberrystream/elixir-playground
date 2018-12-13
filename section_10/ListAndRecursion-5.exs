defmodule MyEnum do
  def all?(enum, func), do: _all?(enum, func, true)
  defp _all?(_, _, acc) when acc == false, do: false
  defp _all?([head | tail], func, acc), do: _all?(tail, func, acc && func.(head))
  defp _all?([], _, acc), do: acc
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
"""
