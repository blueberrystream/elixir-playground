defmodule MyList do
  def caesar([], _), do: []
  def caesar([head | tail], n) when head + n <= ?z, do: [head + n] ++ caesar(tail, n)
  # 26 = ?z - ?a + 1
  def caesar([head | tail], n) when ?z < head + n, do: [head + n - 26] ++ caesar(tail, n)
end

"""
iex(72)> MyList.caesar('ryvkve', 13)
'elixir'
iex(73)>
"""
