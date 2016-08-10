defmodule Faker.Location do
  import Calcs
  import Converter
  
  defstruct [
    city: "Hamilton",
    province: "Ontario",
    state: "California",
    country: "Canada",
    postal_code: "M3J 0G6",
    
  ]

  def number do
    Calcs.random(1000) |> round_up
  end

  def city do
    Calcs.random(1000) |> round_up
  end
end