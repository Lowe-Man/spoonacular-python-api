#import <Foundation/Foundation.h>
#import "OAIInlineObject2.h"
#import "OAIInlineResponse20022.h"
#import "OAIInlineResponse20024.h"
#import "OAIInlineResponse20025.h"
#import "OAIInlineResponse20026.h"
#import "OAIInlineResponse20034.h"
#import "OAIRecipesParseIngredientsNutritionWeightPerServing.h"
#import "OAIApi.h"

/**
* spoonacular API
* The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
*
* The version of the OpenAPI document: 1.0
* Contact: mail@spoonacular.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIIngredientsApi: NSObject <OAIApi>

extern NSString* kOAIIngredientsApiErrorDomain;
extern NSInteger kOAIIngredientsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Autocomplete Ingredient Search
/// Autocomplete the entry of an ingredient.
///
/// @param query The (natural language) search query. (optional)
/// @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)
/// @param metaInformation Whether to return more meta information about the ingredients. (optional)
/// @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSArray<OAIInlineResponse20024>*
-(NSURLSessionTask*) autocompleteIngredientSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    metaInformation: (NSNumber*) metaInformation
    intolerances: (NSString*) intolerances
    completionHandler: (void (^)(NSArray<OAIInlineResponse20024>* output, NSError* error)) handler;


/// Compute Ingredient Amount
/// Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
///
/// @param _id The id of the ingredient you want the amount for.
/// @param nutrient The target nutrient. See a list of supported nutrients.
/// @param target The target number of the given nutrient.
/// @param unit The target unit. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIRecipesParseIngredientsNutritionWeightPerServing*
-(NSURLSessionTask*) computeIngredientAmountWithId: (NSNumber*) _id
    nutrient: (NSString*) nutrient
    target: (NSNumber*) target
    unit: (NSString*) unit
    completionHandler: (void (^)(OAIRecipesParseIngredientsNutritionWeightPerServing* output, NSError* error)) handler;


/// Get Ingredient Information
/// Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
///
/// @param _id The item&#39;s id.
/// @param amount The amount of this ingredient. (optional)
/// @param unit The unit for the given amount. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIInlineResponse20022*
-(NSURLSessionTask*) getIngredientInformationWithId: (NSNumber*) _id
    amount: (NSNumber*) amount
    unit: (NSString*) unit
    completionHandler: (void (^)(OAIInlineResponse20022* output, NSError* error)) handler;


/// Get Ingredient Substitutes
/// Search for substitutes for a given ingredient.
///
/// @param ingredientName The name of the ingredient you want to replace.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIInlineResponse20026*
-(NSURLSessionTask*) getIngredientSubstitutesWithIngredientName: (NSString*) ingredientName
    completionHandler: (void (^)(OAIInlineResponse20026* output, NSError* error)) handler;


/// Get Ingredient Substitutes by ID
/// Search for substitutes for a given ingredient.
///
/// @param _id The item&#39;s id.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIInlineResponse20026*
-(NSURLSessionTask*) getIngredientSubstitutesByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAIInlineResponse20026* output, NSError* error)) handler;


/// Ingredient Search
/// Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
///
/// @param query The (natural language) search query. (optional)
/// @param addChildren Whether to add children of found foods. (optional)
/// @param minProteinPercent The minimum percentage of protein the food must have (between 0 and 100). (optional)
/// @param maxProteinPercent The maximum percentage of protein the food can have (between 0 and 100). (optional)
/// @param minFatPercent The minimum percentage of fat the food must have (between 0 and 100). (optional)
/// @param maxFatPercent The maximum percentage of fat the food can have (between 0 and 100). (optional)
/// @param minCarbsPercent The minimum percentage of carbs the food must have (between 0 and 100). (optional)
/// @param maxCarbsPercent The maximum percentage of carbs the food can have (between 0 and 100). (optional)
/// @param metaInformation Whether to return more meta information about the ingredients. (optional)
/// @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
/// @param sort The strategy to sort recipes by. See a full list of supported sorting options. (optional)
/// @param sortDirection The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). (optional)
/// @param offset The number of results to skip (between 0 and 900). (optional)
/// @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIInlineResponse20025*
-(NSURLSessionTask*) ingredientSearchWithQuery: (NSString*) query
    addChildren: (NSNumber*) addChildren
    minProteinPercent: (NSNumber*) minProteinPercent
    maxProteinPercent: (NSNumber*) maxProteinPercent
    minFatPercent: (NSNumber*) minFatPercent
    maxFatPercent: (NSNumber*) maxFatPercent
    minCarbsPercent: (NSNumber*) minCarbsPercent
    maxCarbsPercent: (NSNumber*) maxCarbsPercent
    metaInformation: (NSNumber*) metaInformation
    intolerances: (NSString*) intolerances
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(OAIInlineResponse20025* output, NSError* error)) handler;


/// Ingredients by ID Image
/// Visualize a recipe's ingredient list.
///
/// @param _id The recipe id.
/// @param measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSObject*
-(NSURLSessionTask*) ingredientsByIDImageWithId: (NSNumber*) _id
    measure: (NSString*) measure
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Map Ingredients to Grocery Products
/// Map a set of ingredients to products you can buy in the grocery store.
///
/// @param inlineObject2 
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSArray<OAIInlineResponse20034>*
-(NSURLSessionTask*) mapIngredientsToGroceryProductsWithInlineObject2: (OAIInlineObject2*) inlineObject2
    completionHandler: (void (^)(NSArray<OAIInlineResponse20034>* output, NSError* error)) handler;


/// Ingredients Widget
/// Visualize ingredients of a recipe. You can play around with that endpoint!
///
/// @param contentType The content type. (optional)
/// @param language The language of the input. Either &#39;en&#39; or &#39;de&#39;. (optional)
/// @param accept Accept header. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSString*
-(NSURLSessionTask*) visualizeIngredientsWithContentType: (NSString*) contentType
    language: (NSString*) language
    accept: (NSString*) accept
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;



@end
