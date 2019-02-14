defmodule MyParse do
  def anagram?(word1, word2) do
    sum1 = 0
    sum2 = 0
    for char1 <- word1, do: sum1 = sum1 + char1
    for char2 <- word2, do: sum2 = sum2 + char2
    sum1 == sum2
  end
end
