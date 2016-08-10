defmodule Converter do 
  def to_nearest_tenth(val) do 
    Float.round(val, 1)
  end

  def seconds_to_hours(val) when is_integer(val) or is_float(val) do
    val / 3600 |> to_nearest_tenth
  end

  def round_up(val) when is_float(val), do: trunc(val)
  def round_to(val) when is_float(val), do: round_to(val, 2)
  def round_to(val) when is_integer(val), do: val
  def round_to(val, precision) when is_float(val), do: Float.round(val, precision)

end