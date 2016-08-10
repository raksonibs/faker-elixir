defmodule FakerTest do
  use ExUnit.Case
  doctest Faker

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "word returns a word" do 
    word_returned = Faker.String.word() 
    assert String.valid?(word_returned) == true
  end
end
