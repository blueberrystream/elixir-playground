defmodule MyParse do
  def is_ascii?(list) do
    result = for x <- list, ?\s <= x, x <= ?~, do: true
    length(result) == length(list)
  end
end
