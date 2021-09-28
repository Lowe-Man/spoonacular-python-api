{-
   spoonacular API

   The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

   OpenAPI Version: 3.0.0
   spoonacular API API version: 1.0
   Contact: mail@spoonacular.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Spoonacular.API.Ingredients
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Spoonacular.API.Ingredients where

import Spoonacular.Core
import Spoonacular.MimeTypes
import Spoonacular.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Ingredients

-- *** autocompleteIngredientSearch

-- | @GET \/food\/ingredients\/autocomplete@
-- 
-- Autocomplete Ingredient Search
-- 
-- Autocomplete the entry of an ingredient.
-- 
-- AuthMethod: 'AuthApiKeyApiKeyScheme'
-- 
autocompleteIngredientSearch 
  :: SpoonacularRequest AutocompleteIngredientSearch MimeNoContent [InlineResponse20024] MimeJSON
autocompleteIngredientSearch =
  _mkRequest "GET" ["/food/ingredients/autocomplete"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyScheme)

data AutocompleteIngredientSearch  

-- | /Optional Param/ "query" - The (natural language) search query.
instance HasOptionalParam AutocompleteIngredientSearch Query where
  applyOptionalParam req (Query xs) =
    req `setQuery` toQuery ("query", Just xs)

-- | /Optional Param/ "number" - The maximum number of items to return (between 1 and 100). Defaults to 10.
instance HasOptionalParam AutocompleteIngredientSearch Number where
  applyOptionalParam req (Number xs) =
    req `setQuery` toQuery ("number", Just xs)

-- | /Optional Param/ "metaInformation" - Whether to return more meta information about the ingredients.
instance HasOptionalParam AutocompleteIngredientSearch MetaInformation where
  applyOptionalParam req (MetaInformation xs) =
    req `setQuery` toQuery ("metaInformation", Just xs)

-- | /Optional Param/ "intolerances" - A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
instance HasOptionalParam AutocompleteIngredientSearch Intolerances where
  applyOptionalParam req (Intolerances xs) =
    req `setQuery` toQuery ("intolerances", Just xs)
-- | @application/json@
instance Produces AutocompleteIngredientSearch MimeJSON


-- *** computeIngredientAmount

-- | @GET \/food\/ingredients\/{id}\/amount@
-- 
-- Compute Ingredient Amount
-- 
-- Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
-- 
-- AuthMethod: 'AuthApiKeyApiKeyScheme'
-- 
computeIngredientAmount 
  :: IdDouble -- ^ "id" -  The id of the ingredient you want the amount for.
  -> Nutrient -- ^ "nutrient" -  The target nutrient. See a list of supported nutrients.
  -> Target -- ^ "target" -  The target number of the given nutrient.
  -> SpoonacularRequest ComputeIngredientAmount MimeNoContent RecipesParseIngredientsNutritionWeightPerServing MimeJSON
computeIngredientAmount (IdDouble id) (Nutrient nutrient) (Target target) =
  _mkRequest "GET" ["/food/ingredients/",toPath id,"/amount"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyScheme)
    `setQuery` toQuery ("nutrient", Just nutrient)
    `setQuery` toQuery ("target", Just target)

data ComputeIngredientAmount  

-- | /Optional Param/ "unit" - The target unit.
instance HasOptionalParam ComputeIngredientAmount Unit where
  applyOptionalParam req (Unit xs) =
    req `setQuery` toQuery ("unit", Just xs)
-- | @application/json@
instance Produces ComputeIngredientAmount MimeJSON


-- *** getIngredientInformation

-- | @GET \/food\/ingredients\/{id}\/information@
-- 
-- Get Ingredient Information
-- 
-- Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
-- 
-- AuthMethod: 'AuthApiKeyApiKeyScheme'
-- 
getIngredientInformation 
  :: Id -- ^ "id" -  The item's id.
  -> SpoonacularRequest GetIngredientInformation MimeNoContent InlineResponse20022 MimeJSON
getIngredientInformation (Id id) =
  _mkRequest "GET" ["/food/ingredients/",toPath id,"/information"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyScheme)

data GetIngredientInformation  

-- | /Optional Param/ "amount" - The amount of this ingredient.
instance HasOptionalParam GetIngredientInformation Amount where
  applyOptionalParam req (Amount xs) =
    req `setQuery` toQuery ("amount", Just xs)

-- | /Optional Param/ "unit" - The unit for the given amount.
instance HasOptionalParam GetIngredientInformation Unit where
  applyOptionalParam req (Unit xs) =
    req `setQuery` toQuery ("unit", Just xs)
-- | @application/json@
instance Produces GetIngredientInformation MimeJSON


-- *** getIngredientSubstitutes

-- | @GET \/food\/ingredients\/substitutes@
-- 
-- Get Ingredient Substitutes
-- 
-- Search for substitutes for a given ingredient.
-- 
-- AuthMethod: 'AuthApiKeyApiKeyScheme'
-- 
getIngredientSubstitutes 
  :: IngredientName -- ^ "ingredientName" -  The name of the ingredient you want to replace.
  -> SpoonacularRequest GetIngredientSubstitutes MimeNoContent InlineResponse20026 MimeJSON
getIngredientSubstitutes (IngredientName ingredientName) =
  _mkRequest "GET" ["/food/ingredients/substitutes"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyScheme)
    `setQuery` toQuery ("ingredientName", Just ingredientName)

data GetIngredientSubstitutes  
-- | @application/json@
instance Produces GetIngredientSubstitutes MimeJSON


-- *** getIngredientSubstitutesByID

-- | @GET \/food\/ingredients\/{id}\/substitutes@
-- 
-- Get Ingredient Substitutes by ID
-- 
-- Search for substitutes for a given ingredient.
-- 
-- AuthMethod: 'AuthApiKeyApiKeyScheme'
-- 
getIngredientSubstitutesByID 
  :: Id -- ^ "id" -  The item's id.
  -> SpoonacularRequest GetIngredientSubstitutesByID MimeNoContent InlineResponse20026 MimeJSON
getIngredientSubstitutesByID (Id id) =
  _mkRequest "GET" ["/food/ingredients/",toPath id,"/substitutes"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyScheme)

data GetIngredientSubstitutesByID  
-- | @application/json@
instance Produces GetIngredientSubstitutesByID MimeJSON


-- *** ingredientSearch

-- | @GET \/food\/ingredients\/search@
-- 
-- Ingredient Search
-- 
-- Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
-- 
-- AuthMethod: 'AuthApiKeyApiKeyScheme'
-- 
ingredientSearch 
  :: SpoonacularRequest IngredientSearch MimeNoContent InlineResponse20025 MimeJSON
ingredientSearch =
  _mkRequest "GET" ["/food/ingredients/search"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyScheme)

data IngredientSearch  

-- | /Optional Param/ "query" - The (natural language) search query.
instance HasOptionalParam IngredientSearch Query where
  applyOptionalParam req (Query xs) =
    req `setQuery` toQuery ("query", Just xs)

-- | /Optional Param/ "addChildren" - Whether to add children of found foods.
instance HasOptionalParam IngredientSearch AddChildren where
  applyOptionalParam req (AddChildren xs) =
    req `setQuery` toQuery ("addChildren", Just xs)

-- | /Optional Param/ "minProteinPercent" - The minimum percentage of protein the food must have (between 0 and 100).
instance HasOptionalParam IngredientSearch MinProteinPercent where
  applyOptionalParam req (MinProteinPercent xs) =
    req `setQuery` toQuery ("minProteinPercent", Just xs)

-- | /Optional Param/ "maxProteinPercent" - The maximum percentage of protein the food can have (between 0 and 100).
instance HasOptionalParam IngredientSearch MaxProteinPercent where
  applyOptionalParam req (MaxProteinPercent xs) =
    req `setQuery` toQuery ("maxProteinPercent", Just xs)

-- | /Optional Param/ "minFatPercent" - The minimum percentage of fat the food must have (between 0 and 100).
instance HasOptionalParam IngredientSearch MinFatPercent where
  applyOptionalParam req (MinFatPercent xs) =
    req `setQuery` toQuery ("minFatPercent", Just xs)

-- | /Optional Param/ "maxFatPercent" - The maximum percentage of fat the food can have (between 0 and 100).
instance HasOptionalParam IngredientSearch MaxFatPercent where
  applyOptionalParam req (MaxFatPercent xs) =
    req `setQuery` toQuery ("maxFatPercent", Just xs)

-- | /Optional Param/ "minCarbsPercent" - The minimum percentage of carbs the food must have (between 0 and 100).
instance HasOptionalParam IngredientSearch MinCarbsPercent where
  applyOptionalParam req (MinCarbsPercent xs) =
    req `setQuery` toQuery ("minCarbsPercent", Just xs)

-- | /Optional Param/ "maxCarbsPercent" - The maximum percentage of carbs the food can have (between 0 and 100).
instance HasOptionalParam IngredientSearch MaxCarbsPercent where
  applyOptionalParam req (MaxCarbsPercent xs) =
    req `setQuery` toQuery ("maxCarbsPercent", Just xs)

-- | /Optional Param/ "metaInformation" - Whether to return more meta information about the ingredients.
instance HasOptionalParam IngredientSearch MetaInformation where
  applyOptionalParam req (MetaInformation xs) =
    req `setQuery` toQuery ("metaInformation", Just xs)

-- | /Optional Param/ "intolerances" - A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
instance HasOptionalParam IngredientSearch Intolerances where
  applyOptionalParam req (Intolerances xs) =
    req `setQuery` toQuery ("intolerances", Just xs)

-- | /Optional Param/ "sort" - The strategy to sort recipes by. See a full list of supported sorting options.
instance HasOptionalParam IngredientSearch Sort where
  applyOptionalParam req (Sort xs) =
    req `setQuery` toQuery ("sort", Just xs)

-- | /Optional Param/ "sortDirection" - The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
instance HasOptionalParam IngredientSearch SortDirection where
  applyOptionalParam req (SortDirection xs) =
    req `setQuery` toQuery ("sortDirection", Just xs)

-- | /Optional Param/ "offset" - The number of results to skip (between 0 and 900).
instance HasOptionalParam IngredientSearch Offset where
  applyOptionalParam req (Offset xs) =
    req `setQuery` toQuery ("offset", Just xs)

-- | /Optional Param/ "number" - The maximum number of items to return (between 1 and 100). Defaults to 10.
instance HasOptionalParam IngredientSearch Number where
  applyOptionalParam req (Number xs) =
    req `setQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces IngredientSearch MimeJSON


-- *** ingredientsByIDImage0

-- | @GET \/recipes\/{id}\/ingredientWidget.png@
-- 
-- Ingredients by ID Image
-- 
-- Visualize a recipe's ingredient list.
-- 
-- AuthMethod: 'AuthApiKeyApiKeyScheme'
-- 
ingredientsByIDImage0 
  :: IdDouble -- ^ "id" -  The recipe id.
  -> SpoonacularRequest IngredientsByIDImage0 MimeNoContent A.Value MimeImagePng
ingredientsByIDImage0 (IdDouble id) =
  _mkRequest "GET" ["/recipes/",toPath id,"/ingredientWidget.png"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyScheme)

data IngredientsByIDImage0  

-- | /Optional Param/ "measure" - Whether the the measures should be 'us' or 'metric'.
instance HasOptionalParam IngredientsByIDImage0 Measure where
  applyOptionalParam req (Measure xs) =
    req `setQuery` toQuery ("measure", Just xs)
-- | @image/png@
instance Produces IngredientsByIDImage0 MimeImagePng


-- *** mapIngredientsToGroceryProducts

-- | @POST \/food\/ingredients\/map@
-- 
-- Map Ingredients to Grocery Products
-- 
-- Map a set of ingredients to products you can buy in the grocery store.
-- 
-- AuthMethod: 'AuthApiKeyApiKeyScheme'
-- 
mapIngredientsToGroceryProducts 
  :: (Consumes MapIngredientsToGroceryProducts MimeJSON, MimeRender MimeJSON InlineObject2)
  => InlineObject2 -- ^ "inlineObject2"
  -> SpoonacularRequest MapIngredientsToGroceryProducts MimeJSON [InlineResponse20034] MimeJSON
mapIngredientsToGroceryProducts inlineObject2 =
  _mkRequest "POST" ["/food/ingredients/map"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyScheme)
    `setBodyParam` inlineObject2

data MapIngredientsToGroceryProducts 
instance HasBodyParam MapIngredientsToGroceryProducts InlineObject2 

-- | @application/json@
instance Consumes MapIngredientsToGroceryProducts MimeJSON

-- | @application/json@
instance Produces MapIngredientsToGroceryProducts MimeJSON


-- *** visualizeIngredients

-- | @POST \/recipes\/visualizeIngredients@
-- 
-- Ingredients Widget
-- 
-- Visualize ingredients of a recipe. You can play around with that endpoint!
-- 
-- AuthMethod: 'AuthApiKeyApiKeyScheme'
-- 
visualizeIngredients 
  :: SpoonacularRequest VisualizeIngredients MimeNoContent Text MimeTextHtml
visualizeIngredients =
  _mkRequest "POST" ["/recipes/visualizeIngredients"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKeyScheme)

data VisualizeIngredients  

-- | /Optional Param/ "Content-Type" - The content type.
instance HasOptionalParam VisualizeIngredients ParamContentType where
  applyOptionalParam req (ParamContentType xs) =
    req `setHeader` toHeader ("Content-Type", xs)

-- | /Optional Param/ "language" - The language of the input. Either 'en' or 'de'.
instance HasOptionalParam VisualizeIngredients Language where
  applyOptionalParam req (Language xs) =
    req `setQuery` toQuery ("language", Just xs)

-- | /Optional Param/ "Accept" - Accept header.
instance HasOptionalParam VisualizeIngredients ParamAccept where
  applyOptionalParam req (ParamAccept xs) =
    req `setHeader` toHeader ("Accept", xs)

-- | @application/x-www-form-urlencoded@
instance Consumes VisualizeIngredients MimeFormUrlEncoded

-- | @text/html@
instance Produces VisualizeIngredients MimeTextHtml

