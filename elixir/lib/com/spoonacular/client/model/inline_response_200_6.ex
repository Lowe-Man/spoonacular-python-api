# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse2006 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"recipes"
  ]

  @type t :: %__MODULE__{
    :"recipes" => [InlineResponse2006Recipes]
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse2006 do
  import com.spoonacular.client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"recipes", :list, com.spoonacular.client.Model.InlineResponse2006Recipes, options)
  end
end

