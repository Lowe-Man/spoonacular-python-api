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
import InlineResponse20041Aisles from './InlineResponse20041Aisles';

/**
 * The InlineResponse20041 model module.
 * @module com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041
 * @version 1.0
 */
class InlineResponse20041 {
    /**
     * Constructs a new <code>InlineResponse20041</code>.
     * @alias module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041
     * @param aisles {Array.<module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041Aisles>} 
     * @param cost {Number} 
     * @param startDate {Number} 
     * @param endDate {Number} 
     */
    constructor(aisles, cost, startDate, endDate) { 
        
        InlineResponse20041.initialize(this, aisles, cost, startDate, endDate);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, aisles, cost, startDate, endDate) { 
        obj['aisles'] = aisles;
        obj['cost'] = cost;
        obj['startDate'] = startDate;
        obj['endDate'] = endDate;
    }

    /**
     * Constructs a <code>InlineResponse20041</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041} obj Optional instance to populate.
     * @return {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041} The populated <code>InlineResponse20041</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20041();

            if (data.hasOwnProperty('aisles')) {
                obj['aisles'] = ApiClient.convertToType(data['aisles'], [InlineResponse20041Aisles]);
            }
            if (data.hasOwnProperty('cost')) {
                obj['cost'] = ApiClient.convertToType(data['cost'], 'Number');
            }
            if (data.hasOwnProperty('startDate')) {
                obj['startDate'] = ApiClient.convertToType(data['startDate'], 'Number');
            }
            if (data.hasOwnProperty('endDate')) {
                obj['endDate'] = ApiClient.convertToType(data['endDate'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041Aisles>} aisles
 */
InlineResponse20041.prototype['aisles'] = undefined;

/**
 * @member {Number} cost
 */
InlineResponse20041.prototype['cost'] = undefined;

/**
 * @member {Number} startDate
 */
InlineResponse20041.prototype['startDate'] = undefined;

/**
 * @member {Number} endDate
 */
InlineResponse20041.prototype['endDate'] = undefined;






export default InlineResponse20041;

