# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20028Nutrition do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"nutrients",
    :"caloricBreakdown"
  ]

  @type t :: %__MODULE__{
    :"nutrients" => [RecipesParseIngredientsNutritionNutrients],
    :"caloricBreakdown" => RecipesParseIngredientsNutritionCaloricBreakdown
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20028Nutrition do
  import com.spoonacular.client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"nutrients", :list, com.spoonacular.client.Model.RecipesParseIngredientsNutritionNutrients, options)
    |> deserialize(:"caloricBreakdown", :struct, com.spoonacular.client.Model.RecipesParseIngredientsNutritionCaloricBreakdown, options)
  end
end
