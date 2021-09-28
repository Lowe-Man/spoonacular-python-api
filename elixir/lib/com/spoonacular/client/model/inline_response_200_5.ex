# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse2005 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"title",
    :"imageType",
    :"readyInMinutes",
    :"servings",
    :"sourceUrl"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"title" => String.t,
    :"imageType" => String.t,
    :"readyInMinutes" => integer(),
    :"servings" => float(),
    :"sourceUrl" => String.t
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse2005 do
  def decode(value, _options) do
    value
  end
end

