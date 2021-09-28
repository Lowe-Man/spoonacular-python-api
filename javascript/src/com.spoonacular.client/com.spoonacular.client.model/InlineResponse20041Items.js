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
import InlineResponse20041Measures from './InlineResponse20041Measures';

/**
 * The InlineResponse20041Items model module.
 * @module com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041Items
 * @version 1.0
 */
class InlineResponse20041Items {
    /**
     * Constructs a new <code>InlineResponse20041Items</code>.
     * @alias module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041Items
     * @param id {Number} 
     * @param name {String} 
     * @param pantryItem {Boolean} 
     * @param aisle {String} 
     * @param cost {Number} 
     * @param ingredientId {Number} 
     */
    constructor(id, name, pantryItem, aisle, cost, ingredientId) { 
        
        InlineResponse20041Items.initialize(this, id, name, pantryItem, aisle, cost, ingredientId);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, name, pantryItem, aisle, cost, ingredientId) { 
        obj['id'] = id;
        obj['name'] = name;
        obj['pantryItem'] = pantryItem;
        obj['aisle'] = aisle;
        obj['cost'] = cost;
        obj['ingredientId'] = ingredientId;
    }

    /**
     * Constructs a <code>InlineResponse20041Items</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041Items} obj Optional instance to populate.
     * @return {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041Items} The populated <code>InlineResponse20041Items</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20041Items();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('measures')) {
                obj['measures'] = InlineResponse20041Measures.constructFromObject(data['measures']);
            }
            if (data.hasOwnProperty('pantryItem')) {
                obj['pantryItem'] = ApiClient.convertToType(data['pantryItem'], 'Boolean');
            }
            if (data.hasOwnProperty('aisle')) {
                obj['aisle'] = ApiClient.convertToType(data['aisle'], 'String');
            }
            if (data.hasOwnProperty('cost')) {
                obj['cost'] = ApiClient.convertToType(data['cost'], 'Number');
            }
            if (data.hasOwnProperty('ingredientId')) {
                obj['ingredientId'] = ApiClient.convertToType(data['ingredientId'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Number} id
 */
InlineResponse20041Items.prototype['id'] = undefined;

/**
 * @member {String} name
 */
InlineResponse20041Items.prototype['name'] = undefined;

/**
 * @member {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20041Measures} measures
 */
InlineResponse20041Items.prototype['measures'] = undefined;

/**
 * @member {Boolean} pantryItem
 */
InlineResponse20041Items.prototype['pantryItem'] = undefined;

/**
 * @member {String} aisle
 */
InlineResponse20041Items.prototype['aisle'] = undefined;

/**
 * @member {Number} cost
 */
InlineResponse20041Items.prototype['cost'] = undefined;

/**
 * @member {Number} ingredientId
 */
InlineResponse20041Items.prototype['ingredientId'] = undefined;






export default InlineResponse20041Items;

