<?php
/**
 * InlineResponse20053Videos
 *
 * PHP version 5
 *
 * @category Class
 * @package  com.spoonacular.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 5.0.0-SNAPSHOT
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace com.spoonacular.client\com.spoonacular.client.model;

use \ArrayAccess;
use \com.spoonacular.client\ObjectSerializer;

/**
 * InlineResponse20053Videos Class Doc Comment
 *
 * @category Class
 * @package  com.spoonacular.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class InlineResponse20053Videos implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'inline_response_200_53_videos';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'title' => 'string',
        'length' => 'int',
        'rating' => 'float',
        'short_title' => 'string',
        'thumbnail' => 'string',
        'views' => 'int',
        'you_tube_id' => 'string'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPIFormats = [
        'title' => null,
        'length' => null,
        'rating' => null,
        'short_title' => null,
        'thumbnail' => null,
        'views' => null,
        'you_tube_id' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'title' => 'title',
        'length' => 'length',
        'rating' => 'rating',
        'short_title' => 'shortTitle',
        'thumbnail' => 'thumbnail',
        'views' => 'views',
        'you_tube_id' => 'youTubeId'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'title' => 'setTitle',
        'length' => 'setLength',
        'rating' => 'setRating',
        'short_title' => 'setShortTitle',
        'thumbnail' => 'setThumbnail',
        'views' => 'setViews',
        'you_tube_id' => 'setYouTubeId'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'title' => 'getTitle',
        'length' => 'getLength',
        'rating' => 'getRating',
        'short_title' => 'getShortTitle',
        'thumbnail' => 'getThumbnail',
        'views' => 'getViews',
        'you_tube_id' => 'getYouTubeId'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }

    

    

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['title'] = isset($data['title']) ? $data['title'] : null;
        $this->container['length'] = isset($data['length']) ? $data['length'] : null;
        $this->container['rating'] = isset($data['rating']) ? $data['rating'] : null;
        $this->container['short_title'] = isset($data['short_title']) ? $data['short_title'] : null;
        $this->container['thumbnail'] = isset($data['thumbnail']) ? $data['thumbnail'] : null;
        $this->container['views'] = isset($data['views']) ? $data['views'] : null;
        $this->container['you_tube_id'] = isset($data['you_tube_id']) ? $data['you_tube_id'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['title'] === null) {
            $invalidProperties[] = "'title' can't be null";
        }
        if ((mb_strlen($this->container['title']) < 1)) {
            $invalidProperties[] = "invalid value for 'title', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['length'] === null) {
            $invalidProperties[] = "'length' can't be null";
        }
        if ($this->container['rating'] === null) {
            $invalidProperties[] = "'rating' can't be null";
        }
        if ($this->container['short_title'] === null) {
            $invalidProperties[] = "'short_title' can't be null";
        }
        if ((mb_strlen($this->container['short_title']) < 1)) {
            $invalidProperties[] = "invalid value for 'short_title', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['thumbnail'] === null) {
            $invalidProperties[] = "'thumbnail' can't be null";
        }
        if ((mb_strlen($this->container['thumbnail']) < 1)) {
            $invalidProperties[] = "invalid value for 'thumbnail', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['views'] === null) {
            $invalidProperties[] = "'views' can't be null";
        }
        if ($this->container['you_tube_id'] === null) {
            $invalidProperties[] = "'you_tube_id' can't be null";
        }
        if ((mb_strlen($this->container['you_tube_id']) < 1)) {
            $invalidProperties[] = "invalid value for 'you_tube_id', the character length must be bigger than or equal to 1.";
        }

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets title
     *
     * @return string
     */
    public function getTitle()
    {
        return $this->container['title'];
    }

    /**
     * Sets title
     *
     * @param string $title title
     *
     * @return $this
     */
    public function setTitle($title)
    {

        if ((mb_strlen($title) < 1)) {
            throw new \InvalidArgumentException('invalid length for $title when calling InlineResponse20053Videos., must be bigger than or equal to 1.');
        }

        $this->container['title'] = $title;

        return $this;
    }

    /**
     * Gets length
     *
     * @return int
     */
    public function getLength()
    {
        return $this->container['length'];
    }

    /**
     * Sets length
     *
     * @param int $length length
     *
     * @return $this
     */
    public function setLength($length)
    {
        $this->container['length'] = $length;

        return $this;
    }

    /**
     * Gets rating
     *
     * @return float
     */
    public function getRating()
    {
        return $this->container['rating'];
    }

    /**
     * Sets rating
     *
     * @param float $rating rating
     *
     * @return $this
     */
    public function setRating($rating)
    {
        $this->container['rating'] = $rating;

        return $this;
    }

    /**
     * Gets short_title
     *
     * @return string
     */
    public function getShortTitle()
    {
        return $this->container['short_title'];
    }

    /**
     * Sets short_title
     *
     * @param string $short_title short_title
     *
     * @return $this
     */
    public function setShortTitle($short_title)
    {

        if ((mb_strlen($short_title) < 1)) {
            throw new \InvalidArgumentException('invalid length for $short_title when calling InlineResponse20053Videos., must be bigger than or equal to 1.');
        }

        $this->container['short_title'] = $short_title;

        return $this;
    }

    /**
     * Gets thumbnail
     *
     * @return string
     */
    public function getThumbnail()
    {
        return $this->container['thumbnail'];
    }

    /**
     * Sets thumbnail
     *
     * @param string $thumbnail thumbnail
     *
     * @return $this
     */
    public function setThumbnail($thumbnail)
    {

        if ((mb_strlen($thumbnail) < 1)) {
            throw new \InvalidArgumentException('invalid length for $thumbnail when calling InlineResponse20053Videos., must be bigger than or equal to 1.');
        }

        $this->container['thumbnail'] = $thumbnail;

        return $this;
    }

    /**
     * Gets views
     *
     * @return int
     */
    public function getViews()
    {
        return $this->container['views'];
    }

    /**
     * Sets views
     *
     * @param int $views views
     *
     * @return $this
     */
    public function setViews($views)
    {
        $this->container['views'] = $views;

        return $this;
    }

    /**
     * Gets you_tube_id
     *
     * @return string
     */
    public function getYouTubeId()
    {
        return $this->container['you_tube_id'];
    }

    /**
     * Sets you_tube_id
     *
     * @param string $you_tube_id you_tube_id
     *
     * @return $this
     */
    public function setYouTubeId($you_tube_id)
    {

        if ((mb_strlen($you_tube_id) < 1)) {
            throw new \InvalidArgumentException('invalid length for $you_tube_id when calling InlineResponse20053Videos., must be bigger than or equal to 1.');
        }

        $this->container['you_tube_id'] = $you_tube_id;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     *
     * @param integer $offset Offset
     * @param mixed   $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }
}


