defmodule MyParse do
  def anagram?(word1, word2) do
    sum1 = Enum.sum(for char1 <- word1, do: char1)
    sum2 = Enum.sum(for char2 <- word2, do: char2)
    sum1 == sum2
  end
end
