/*
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


package com.spoonacular;

import com.spoonacular.client.ApiException;
import java.math.BigDecimal;
import com.spoonacular.client.model.InlineObject3;
import com.spoonacular.client.model.InlineObject4;
import com.spoonacular.client.model.InlineObject5;
import com.spoonacular.client.model.InlineObject6;
import com.spoonacular.client.model.InlineObject7;
import com.spoonacular.client.model.InlineObject8;
import com.spoonacular.client.model.InlineResponse20037;
import com.spoonacular.client.model.InlineResponse20038;
import com.spoonacular.client.model.InlineResponse20039;
import com.spoonacular.client.model.InlineResponse20040;
import com.spoonacular.client.model.InlineResponse20041;
import com.spoonacular.client.model.InlineResponse20042;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for MealPlanningApi
 */
@Ignore
public class MealPlanningApiTest {

    private final MealPlanningApi api = new MealPlanningApi();

    
    /**
     * Add to Meal Plan
     *
     * Add an item to the user&#39;s meal plan.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void addToMealPlanTest() throws ApiException {
        String username = null;
        String hash = null;
        InlineObject4 inlineObject4 = null;
        Object response = api.addToMealPlan(username, hash, inlineObject4);

        // TODO: test validations
    }
    
    /**
     * Add to Shopping List
     *
     * Add an item to the current shopping list of a user.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void addToShoppingListTest() throws ApiException {
        String username = null;
        String hash = null;
        InlineObject7 inlineObject7 = null;
        InlineResponse20041 response = api.addToShoppingList(username, hash, inlineObject7);

        // TODO: test validations
    }
    
    /**
     * Clear Meal Plan Day
     *
     * Delete all planned items from the user&#39;s meal plan for a specific day.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void clearMealPlanDayTest() throws ApiException {
        String username = null;
        String date = null;
        String hash = null;
        InlineObject3 inlineObject3 = null;
        Object response = api.clearMealPlanDay(username, date, hash, inlineObject3);

        // TODO: test validations
    }
    
    /**
     * Connect User
     *
     * In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void connectUserTest() throws ApiException {
        Object body = null;
        InlineResponse20042 response = api.connectUser(body);

        // TODO: test validations
    }
    
    /**
     * Delete from Meal Plan
     *
     * Delete an item from the user&#39;s meal plan.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteFromMealPlanTest() throws ApiException {
        String username = null;
        BigDecimal id = null;
        String hash = null;
        InlineObject5 inlineObject5 = null;
        Object response = api.deleteFromMealPlan(username, id, hash, inlineObject5);

        // TODO: test validations
    }
    
    /**
     * Delete from Shopping List
     *
     * Delete an item from the current shopping list of the user.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteFromShoppingListTest() throws ApiException {
        String username = null;
        Integer id = null;
        String hash = null;
        InlineObject8 inlineObject8 = null;
        Object response = api.deleteFromShoppingList(username, id, hash, inlineObject8);

        // TODO: test validations
    }
    
    /**
     * Generate Meal Plan
     *
     * Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void generateMealPlanTest() throws ApiException {
        String timeFrame = null;
        BigDecimal targetCalories = null;
        String diet = null;
        String exclude = null;
        InlineResponse20037 response = api.generateMealPlan(timeFrame, targetCalories, diet, exclude);

        // TODO: test validations
    }
    
    /**
     * Generate Shopping List
     *
     * Generate the shopping list for a user from the meal planner in a given time frame.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void generateShoppingListTest() throws ApiException {
        String username = null;
        String startDate = null;
        String endDate = null;
        String hash = null;
        InlineObject6 inlineObject6 = null;
        InlineResponse20041 response = api.generateShoppingList(username, startDate, endDate, hash, inlineObject6);

        // TODO: test validations
    }
    
    /**
     * Get Meal Plan Template
     *
     * Get information about a meal plan template.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getMealPlanTemplateTest() throws ApiException {
        String username = null;
        Integer id = null;
        String hash = null;
        InlineResponse20040 response = api.getMealPlanTemplate(username, id, hash);

        // TODO: test validations
    }
    
    /**
     * Get Meal Plan Templates
     *
     * Get meal plan templates from user or public ones.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getMealPlanTemplatesTest() throws ApiException {
        String username = null;
        String hash = null;
        InlineResponse20039 response = api.getMealPlanTemplates(username, hash);

        // TODO: test validations
    }
    
    /**
     * Get Meal Plan Week
     *
     * Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getMealPlanWeekTest() throws ApiException {
        String username = null;
        String startDate = null;
        String hash = null;
        InlineResponse20038 response = api.getMealPlanWeek(username, startDate, hash);

        // TODO: test validations
    }
    
    /**
     * Get Shopping List
     *
     * Get the current shopping list for the given user.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getShoppingListTest() throws ApiException {
        String username = null;
        String hash = null;
        InlineResponse20041 response = api.getShoppingList(username, hash);

        // TODO: test validations
    }
    
}
