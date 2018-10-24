defmodule MyList do
  def max(list), do: _max(list, 0)

  defp _max([], value), do: value
  defp _max([head | tail] , value) when head <= value, do: _max(tail, value)
  defp _max([head | tail] , value) when value < head, do: _max(tail, head)
end

"""
iex(17)> MyList.max [1,2,3,4,5]
5
iex(18)> MyList.max [1,2,6,4,5]
6
iex(19)> MyList.max [1,2000,6,4,5]
2000
iex(20)> MyList.max []
0
iex(21)> MyList.max [1]
1
iex(22)>
"""
