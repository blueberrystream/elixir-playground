defmodule MyList do
  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)

  def sum_ex([]), do: 0
  def sum_ex([head | tail]), do: head + sum_ex(tail)
end

"""
iex(8)> MyList.sum_ex [0,0,0,1]
1
iex(9)> MyList.sum_ex [0,2,0,1]
3
iex(10)> MyList.sum_ex [0,2,5,1]
8
iex(11)> MyList.sum_ex [0,2,5,9,1]
17
iex(12)>
"""
