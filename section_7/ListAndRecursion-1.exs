defmodule MyList do
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)
end

"""
iex(13)> MyList.mapsum [1,2,3], &(&1 * &1)
14
iex(14)> MyList.mapsum [1,2,3,4], &(&1 * &1)
30
iex(15)>
"""
