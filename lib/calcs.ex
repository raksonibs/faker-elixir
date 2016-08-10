defmodule Calcs do 
  def square_root(val), do: :math.sqrt(val)
  def squared(val), do: val * val
  def cubed(val), do: val * val * val
  def pi, do: :math.pi  
  def random(num \\ 1000000000) when is_integer(num), do: :rand.uniform * num
end