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
import InlineResponse20040Days from './InlineResponse20040Days';

/**
 * The InlineResponse20040 model module.
 * @module com.spoonacular.client/com.spoonacular.client.model/InlineResponse20040
 * @version 1.0
 */
class InlineResponse20040 {
    /**
     * Constructs a new <code>InlineResponse20040</code>.
     * @alias module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20040
     * @param id {Number} 
     * @param name {String} 
     * @param days {Array.<module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20040Days>} 
     */
    constructor(id, name, days) { 
        
        InlineResponse20040.initialize(this, id, name, days);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, name, days) { 
        obj['id'] = id;
        obj['name'] = name;
        obj['days'] = days;
    }

    /**
     * Constructs a <code>InlineResponse20040</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20040} obj Optional instance to populate.
     * @return {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20040} The populated <code>InlineResponse20040</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20040();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('days')) {
                obj['days'] = ApiClient.convertToType(data['days'], [InlineResponse20040Days]);
            }
        }
        return obj;
    }


}

/**
 * @member {Number} id
 */
InlineResponse20040.prototype['id'] = undefined;

/**
 * @member {String} name
 */
InlineResponse20040.prototype['name'] = undefined;

/**
 * @member {Array.<module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20040Days>} days
 */
InlineResponse20040.prototype['days'] = undefined;






export default InlineResponse20040;

