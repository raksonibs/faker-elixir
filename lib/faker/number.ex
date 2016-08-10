defmodule Faker.Number do
  import Calcs
  import Converter
  
  def random do
    Calcs.random(Integer.max_value) |> round_up
  end
end