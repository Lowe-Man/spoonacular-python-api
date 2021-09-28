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
 *
 */

import ApiClient from '../ApiClient';
import InlineResponse20052SearchResults from './InlineResponse20052SearchResults';

/**
 * The InlineResponse20052 model module.
 * @module com.spoonacular.client/com.spoonacular.client.model/InlineResponse20052
 * @version 1.0
 */
class InlineResponse20052 {
    /**
     * Constructs a new <code>InlineResponse20052</code>.
     * @alias module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20052
     * @param query {String} 
     * @param totalResults {Number} 
     * @param limit {Number} 
     * @param offset {Number} 
     * @param searchResults {Array.<module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20052SearchResults>} 
     */
    constructor(query, totalResults, limit, offset, searchResults) { 
        
        InlineResponse20052.initialize(this, query, totalResults, limit, offset, searchResults);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, query, totalResults, limit, offset, searchResults) { 
        obj['query'] = query;
        obj['totalResults'] = totalResults;
        obj['limit'] = limit;
        obj['offset'] = offset;
        obj['searchResults'] = searchResults;
    }

    /**
     * Constructs a <code>InlineResponse20052</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20052} obj Optional instance to populate.
     * @return {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20052} The populated <code>InlineResponse20052</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20052();

            if (data.hasOwnProperty('query')) {
                obj['query'] = ApiClient.convertToType(data['query'], 'String');
            }
            if (data.hasOwnProperty('totalResults')) {
                obj['totalResults'] = ApiClient.convertToType(data['totalResults'], 'Number');
            }
            if (data.hasOwnProperty('limit')) {
                obj['limit'] = ApiClient.convertToType(data['limit'], 'Number');
            }
            if (data.hasOwnProperty('offset')) {
                obj['offset'] = ApiClient.convertToType(data['offset'], 'Number');
            }
            if (data.hasOwnProperty('searchResults')) {
                obj['searchResults'] = ApiClient.convertToType(data['searchResults'], [InlineResponse20052SearchResults]);
            }
        }
        return obj;
    }


}

/**
 * @member {String} query
 */
InlineResponse20052.prototype['query'] = undefined;

/**
 * @member {Number} totalResults
 */
InlineResponse20052.prototype['totalResults'] = undefined;

/**
 * @member {Number} limit
 */
InlineResponse20052.prototype['limit'] = undefined;

/**
 * @member {Number} offset
 */
InlineResponse20052.prototype['offset'] = undefined;

/**
 * @member {Array.<module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20052SearchResults>} searchResults
 */
InlineResponse20052.prototype['searchResults'] = undefined;






export default InlineResponse20052;

