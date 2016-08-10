defmodule Faker do
  import Calcs
  import Converter

  def paragraph(num_words \\ 100) do 
    paragraph(num_words, [])
  end

  def paragraph(num_words, total_words) when num_words == 0 do
    Enum.join(total_words, " ")
  end

  def paragraph(num_words, total_words) when num_words > 0 do 
    given_word = (word |> check_capital(total_words))
    paragraph(num_words - 1, total_words ++ [given_word])
  end

  def word do
    random()
      |> round_up
      |> to_string_binary
  end

  def to_string_binary(x) do 
    Integer.to_string(x, 36)
      |> String.downcase
      |> put_period
  end

  def put_period(word) do 
    ~r{[Aa]}
      |> Regex.named_captures(word) 
      |> put_period(word)
  end

  def put_period(%{}, word) do 
    "#{word}."
  end

  def put_period(nil, word) do 
    "#{word}"
  end

  def check_capital(word, [ head | tail ]) do
    ~r{\.}
      |> capture_regex([ head | tail ])
      |> maybe_capitalize(word)
  end

  def capture_regex(regex, arr) do
    last = Enum.at(arr, -1)
      |> String.last()
    Regex.named_captures(regex, last)          
  end

  def check_capital(word, []) do 
    word
  end

  def maybe_capitalize(nil, word) do 
    word
  end

  def maybe_capitalize(%{}, word) do
    String.capitalize(word)
  end
end
