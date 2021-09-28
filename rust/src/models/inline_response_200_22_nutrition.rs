/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct InlineResponse20022Nutrition {
    #[serde(rename = "nutrients")]
    pub nutrients: Vec<::models::RecipesParseIngredientsNutritionNutrients>,
    #[serde(rename = "properties")]
    pub properties: Vec<::models::RecipesParseIngredientsNutritionProperties>,
    #[serde(rename = "caloricBreakdown")]
    pub caloric_breakdown: ::models::RecipesParseIngredientsNutritionCaloricBreakdown,
    #[serde(rename = "weightPerServing")]
    pub weight_per_serving: ::models::RecipesParseIngredientsNutritionWeightPerServing,
}

impl InlineResponse20022Nutrition {
    pub fn new(nutrients: Vec<::models::RecipesParseIngredientsNutritionNutrients>, properties: Vec<::models::RecipesParseIngredientsNutritionProperties>, caloric_breakdown: ::models::RecipesParseIngredientsNutritionCaloricBreakdown, weight_per_serving: ::models::RecipesParseIngredientsNutritionWeightPerServing) -> InlineResponse20022Nutrition {
        InlineResponse20022Nutrition {
            nutrients: nutrients,
            properties: properties,
            caloric_breakdown: caloric_breakdown,
            weight_per_serving: weight_per_serving,
        }
    }
}
