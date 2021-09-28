# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse2003ExtendedIngredients do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"aisle",
    :"amount",
    :"consitency",
    :"id",
    :"image",
    :"measures",
    :"meta",
    :"name",
    :"original",
    :"originalName",
    :"unit"
  ]

  @type t :: %__MODULE__{
    :"aisle" => String.t,
    :"amount" => float(),
    :"consitency" => String.t,
    :"id" => integer(),
    :"image" => String.t,
    :"measures" => InlineResponse2003Measures | nil,
    :"meta" => [String.t] | nil,
    :"name" => String.t,
    :"original" => String.t,
    :"originalName" => String.t,
    :"unit" => String.t
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse2003ExtendedIngredients do
  import com.spoonacular.client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"measures", :struct, com.spoonacular.client.Model.InlineResponse2003Measures, options)
  end
end

