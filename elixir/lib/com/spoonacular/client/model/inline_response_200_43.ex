# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20043 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"pairings",
    :"text"
  ]

  @type t :: %__MODULE__{
    :"pairings" => [String.t],
    :"text" => String.t
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20043 do
  def decode(value, _options) do
    value
  end
end
