/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * API version: 1.0
 * Contact: mail@spoonacular.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package spoonacular

type InlineResponse2006Recipes struct {
	Id int32 `json:"id"`
	Title string `json:"title"`
	Image string `json:"image"`
	ImageType string `json:"imageType"`
	Servings float32 `json:"servings"`
	ReadyInMinutes int32 `json:"readyInMinutes"`
	License string `json:"license"`
	SourceName string `json:"sourceName"`
	SourceUrl string `json:"sourceUrl"`
	SpoonacularSourceUrl string `json:"spoonacularSourceUrl"`
	AggregateLikes float32 `json:"aggregateLikes"`
	HealthScore float32 `json:"healthScore"`
	SpoonacularScore float32 `json:"spoonacularScore"`
	PricePerServing float32 `json:"pricePerServing"`
	AnalyzedInstructions []map[string]interface{} `json:"analyzedInstructions,omitempty"`
	Cheap bool `json:"cheap"`
	CreditsText string `json:"creditsText"`
	Cuisines []string `json:"cuisines,omitempty"`
	DairyFree bool `json:"dairyFree"`
	Diets []string `json:"diets,omitempty"`
	Gaps string `json:"gaps"`
	GlutenFree bool `json:"glutenFree"`
	Instructions string `json:"instructions"`
	Ketogenic bool `json:"ketogenic"`
	LowFodmap bool `json:"lowFodmap"`
	Occasions []string `json:"occasions,omitempty"`
	Sustainable bool `json:"sustainable"`
	Vegan bool `json:"vegan"`
	Vegetarian bool `json:"vegetarian"`
	VeryHealthy bool `json:"veryHealthy"`
	VeryPopular bool `json:"veryPopular"`
	Whole30 bool `json:"whole30"`
	WeightWatcherSmartPoints float32 `json:"weightWatcherSmartPoints"`
	DishTypes []string `json:"dishTypes,omitempty"`
	ExtendedIngredients []InlineResponse2003ExtendedIngredients `json:"extendedIngredients,omitempty"`
	Summary string `json:"summary"`
	WinePairing InlineResponse2003WinePairing `json:"winePairing,omitempty"`
}
