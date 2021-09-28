#import <Foundation/Foundation.h>
#import "OAIInlineResponse20032.h"
#import "OAIInlineResponse20035.h"
#import "OAIInlineResponse20036.h"
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



@interface OAIMenuItemsApi: NSObject <OAIApi>

extern NSString* kOAIMenuItemsApiErrorDomain;
extern NSInteger kOAIMenuItemsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Autocomplete Menu Item Search
/// Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
///
/// @param query The (partial) search query.
/// @param number The number of results to return (between 1 and 25). (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIInlineResponse20032*
-(NSURLSessionTask*) autocompleteMenuItemSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    completionHandler: (void (^)(OAIInlineResponse20032* output, NSError* error)) handler;


/// Get Menu Item Information
/// Use a menu item id to get all available information about a menu item, such as nutrition.
///
/// @param _id The item&#39;s id.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIInlineResponse20036*
-(NSURLSessionTask*) getMenuItemInformationWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAIInlineResponse20036* output, NSError* error)) handler;


/// Menu Item Nutrition by ID Image
/// Visualize a menu item's nutritional information as HTML including CSS.
///
/// @param _id The menu item id.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSObject*
-(NSURLSessionTask*) menuItemNutritionByIDImageWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Menu Item Nutrition Label Image
/// Visualize a menu item's nutritional label information as an image.
///
/// @param _id The menu item id.
/// @param showOptionalNutrients Whether to show optional nutrients. (optional)
/// @param showZeroValues Whether to show zero values. (optional)
/// @param showIngredients Whether to show a list of ingredients. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSObject*
-(NSURLSessionTask*) menuItemNutritionLabelImageWithId: (NSNumber*) _id
    showOptionalNutrients: (NSNumber*) showOptionalNutrients
    showZeroValues: (NSNumber*) showZeroValues
    showIngredients: (NSNumber*) showIngredients
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Menu Item Nutrition Label Widget
/// Visualize a menu item's nutritional label information as HTML including CSS.
///
/// @param _id The menu item id.
/// @param defaultCss Whether the default CSS should be added to the response. (optional) (default to @(YES))
/// @param showOptionalNutrients Whether to show optional nutrients. (optional)
/// @param showZeroValues Whether to show zero values. (optional)
/// @param showIngredients Whether to show a list of ingredients. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSString*
-(NSURLSessionTask*) menuItemNutritionLabelWidgetWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    showOptionalNutrients: (NSNumber*) showOptionalNutrients
    showZeroValues: (NSNumber*) showZeroValues
    showIngredients: (NSNumber*) showIngredients
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Search Menu Items
/// Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
///
/// @param query The (natural language) search query. (optional)
/// @param minCalories The minimum amount of calories the menu item must have. (optional)
/// @param maxCalories The maximum amount of calories the menu item can have. (optional)
/// @param minCarbs The minimum amount of carbohydrates in grams the menu item must have. (optional)
/// @param maxCarbs The maximum amount of carbohydrates in grams the menu item can have. (optional)
/// @param minProtein The minimum amount of protein in grams the menu item must have. (optional)
/// @param maxProtein The maximum amount of protein in grams the menu item can have. (optional)
/// @param minFat The minimum amount of fat in grams the menu item must have. (optional)
/// @param maxFat The maximum amount of fat in grams the menu item can have. (optional)
/// @param offset The number of results to skip (between 0 and 900). (optional)
/// @param number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to @10)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return OAIInlineResponse20035*
-(NSURLSessionTask*) searchMenuItemsWithQuery: (NSString*) query
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(OAIInlineResponse20035* output, NSError* error)) handler;


/// Menu Item Nutrition by ID Widget
/// Visualize a menu item's nutritional information as HTML including CSS.
///
/// @param _id The item&#39;s id.
/// @param defaultCss Whether the default CSS should be added to the response. (optional) (default to @(YES))
/// @param accept Accept header. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return NSString*
-(NSURLSessionTask*) visualizeMenuItemNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    accept: (NSString*) accept
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;



@end
