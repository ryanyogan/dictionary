defmodule Dictionary.WordList do
  @spec random_word(any) :: any
  def random_word(words) do
    words
    |> Enum.random()
  end

  @spec word_list :: [binary]
  def word_list do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end
end
