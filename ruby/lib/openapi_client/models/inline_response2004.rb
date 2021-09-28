=begin
#spoonacular API

#The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.0
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'

module OpenapiClient
  class InlineResponse2004
    attr_accessor :id

    attr_accessor :title

    attr_accessor :image

    attr_accessor :image_type

    attr_accessor :servings

    attr_accessor :ready_in_minutes

    attr_accessor :license

    attr_accessor :source_name

    attr_accessor :source_url

    attr_accessor :spoonacular_source_url

    attr_accessor :aggregate_likes

    attr_accessor :health_score

    attr_accessor :spoonacular_score

    attr_accessor :price_per_serving

    attr_accessor :analyzed_instructions

    attr_accessor :cheap

    attr_accessor :credits_text

    attr_accessor :cuisines

    attr_accessor :dairy_free

    attr_accessor :diets

    attr_accessor :gaps

    attr_accessor :gluten_free

    attr_accessor :instructions

    attr_accessor :ketogenic

    attr_accessor :low_fodmap

    attr_accessor :occasions

    attr_accessor :sustainable

    attr_accessor :vegan

    attr_accessor :vegetarian

    attr_accessor :very_healthy

    attr_accessor :very_popular

    attr_accessor :whole30

    attr_accessor :weight_watcher_smart_points

    attr_accessor :dish_types

    attr_accessor :extended_ingredients

    attr_accessor :summary

    attr_accessor :wine_pairing

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'image' => :'image',
        :'image_type' => :'imageType',
        :'servings' => :'servings',
        :'ready_in_minutes' => :'readyInMinutes',
        :'license' => :'license',
        :'source_name' => :'sourceName',
        :'source_url' => :'sourceUrl',
        :'spoonacular_source_url' => :'spoonacularSourceUrl',
        :'aggregate_likes' => :'aggregateLikes',
        :'health_score' => :'healthScore',
        :'spoonacular_score' => :'spoonacularScore',
        :'price_per_serving' => :'pricePerServing',
        :'analyzed_instructions' => :'analyzedInstructions',
        :'cheap' => :'cheap',
        :'credits_text' => :'creditsText',
        :'cuisines' => :'cuisines',
        :'dairy_free' => :'dairyFree',
        :'diets' => :'diets',
        :'gaps' => :'gaps',
        :'gluten_free' => :'glutenFree',
        :'instructions' => :'instructions',
        :'ketogenic' => :'ketogenic',
        :'low_fodmap' => :'lowFodmap',
        :'occasions' => :'occasions',
        :'sustainable' => :'sustainable',
        :'vegan' => :'vegan',
        :'vegetarian' => :'vegetarian',
        :'very_healthy' => :'veryHealthy',
        :'very_popular' => :'veryPopular',
        :'whole30' => :'whole30',
        :'weight_watcher_smart_points' => :'weightWatcherSmartPoints',
        :'dish_types' => :'dishTypes',
        :'extended_ingredients' => :'extendedIngredients',
        :'summary' => :'summary',
        :'wine_pairing' => :'winePairing'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'title' => :'String',
        :'image' => :'String',
        :'image_type' => :'String',
        :'servings' => :'Float',
        :'ready_in_minutes' => :'Integer',
        :'license' => :'String',
        :'source_name' => :'String',
        :'source_url' => :'String',
        :'spoonacular_source_url' => :'String',
        :'aggregate_likes' => :'Integer',
        :'health_score' => :'Float',
        :'spoonacular_score' => :'Float',
        :'price_per_serving' => :'Float',
        :'analyzed_instructions' => :'Array<String>',
        :'cheap' => :'Boolean',
        :'credits_text' => :'String',
        :'cuisines' => :'Array<String>',
        :'dairy_free' => :'Boolean',
        :'diets' => :'Array<String>',
        :'gaps' => :'String',
        :'gluten_free' => :'Boolean',
        :'instructions' => :'String',
        :'ketogenic' => :'Boolean',
        :'low_fodmap' => :'Boolean',
        :'occasions' => :'Array<String>',
        :'sustainable' => :'Boolean',
        :'vegan' => :'Boolean',
        :'vegetarian' => :'Boolean',
        :'very_healthy' => :'Boolean',
        :'very_popular' => :'Boolean',
        :'whole30' => :'Boolean',
        :'weight_watcher_smart_points' => :'Float',
        :'dish_types' => :'Array<String>',
        :'extended_ingredients' => :'Array<InlineResponse2003ExtendedIngredients>',
        :'summary' => :'String',
        :'wine_pairing' => :'InlineResponse2003WinePairing'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::InlineResponse2004` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::InlineResponse2004`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'image_type')
        self.image_type = attributes[:'image_type']
      end

      if attributes.key?(:'servings')
        self.servings = attributes[:'servings']
      end

      if attributes.key?(:'ready_in_minutes')
        self.ready_in_minutes = attributes[:'ready_in_minutes']
      end

      if attributes.key?(:'license')
        self.license = attributes[:'license']
      end

      if attributes.key?(:'source_name')
        self.source_name = attributes[:'source_name']
      end

      if attributes.key?(:'source_url')
        self.source_url = attributes[:'source_url']
      end

      if attributes.key?(:'spoonacular_source_url')
        self.spoonacular_source_url = attributes[:'spoonacular_source_url']
      end

      if attributes.key?(:'aggregate_likes')
        self.aggregate_likes = attributes[:'aggregate_likes']
      end

      if attributes.key?(:'health_score')
        self.health_score = attributes[:'health_score']
      end

      if attributes.key?(:'spoonacular_score')
        self.spoonacular_score = attributes[:'spoonacular_score']
      end

      if attributes.key?(:'price_per_serving')
        self.price_per_serving = attributes[:'price_per_serving']
      end

      if attributes.key?(:'analyzed_instructions')
        if (value = attributes[:'analyzed_instructions']).is_a?(Array)
          self.analyzed_instructions = value
        end
      end

      if attributes.key?(:'cheap')
        self.cheap = attributes[:'cheap']
      end

      if attributes.key?(:'credits_text')
        self.credits_text = attributes[:'credits_text']
      end

      if attributes.key?(:'cuisines')
        if (value = attributes[:'cuisines']).is_a?(Array)
          self.cuisines = value
        end
      end

      if attributes.key?(:'dairy_free')
        self.dairy_free = attributes[:'dairy_free']
      end

      if attributes.key?(:'diets')
        if (value = attributes[:'diets']).is_a?(Array)
          self.diets = value
        end
      end

      if attributes.key?(:'gaps')
        self.gaps = attributes[:'gaps']
      end

      if attributes.key?(:'gluten_free')
        self.gluten_free = attributes[:'gluten_free']
      end

      if attributes.key?(:'instructions')
        self.instructions = attributes[:'instructions']
      end

      if attributes.key?(:'ketogenic')
        self.ketogenic = attributes[:'ketogenic']
      end

      if attributes.key?(:'low_fodmap')
        self.low_fodmap = attributes[:'low_fodmap']
      end

      if attributes.key?(:'occasions')
        if (value = attributes[:'occasions']).is_a?(Array)
          self.occasions = value
        end
      end

      if attributes.key?(:'sustainable')
        self.sustainable = attributes[:'sustainable']
      end

      if attributes.key?(:'vegan')
        self.vegan = attributes[:'vegan']
      end

      if attributes.key?(:'vegetarian')
        self.vegetarian = attributes[:'vegetarian']
      end

      if attributes.key?(:'very_healthy')
        self.very_healthy = attributes[:'very_healthy']
      end

      if attributes.key?(:'very_popular')
        self.very_popular = attributes[:'very_popular']
      end

      if attributes.key?(:'whole30')
        self.whole30 = attributes[:'whole30']
      end

      if attributes.key?(:'weight_watcher_smart_points')
        self.weight_watcher_smart_points = attributes[:'weight_watcher_smart_points']
      end

      if attributes.key?(:'dish_types')
        if (value = attributes[:'dish_types']).is_a?(Array)
          self.dish_types = value
        end
      end

      if attributes.key?(:'extended_ingredients')
        if (value = attributes[:'extended_ingredients']).is_a?(Array)
          self.extended_ingredients = value
        end
      end

      if attributes.key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.key?(:'wine_pairing')
        self.wine_pairing = attributes[:'wine_pairing']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @title.to_s.length < 1
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 1.')
      end

      if @image.nil?
        invalid_properties.push('invalid value for "image", image cannot be nil.')
      end

      if @image.to_s.length < 1
        invalid_properties.push('invalid value for "image", the character length must be great than or equal to 1.')
      end

      if @image_type.nil?
        invalid_properties.push('invalid value for "image_type", image_type cannot be nil.')
      end

      if @image_type.to_s.length < 1
        invalid_properties.push('invalid value for "image_type", the character length must be great than or equal to 1.')
      end

      if @servings.nil?
        invalid_properties.push('invalid value for "servings", servings cannot be nil.')
      end

      if @ready_in_minutes.nil?
        invalid_properties.push('invalid value for "ready_in_minutes", ready_in_minutes cannot be nil.')
      end

      if @license.nil?
        invalid_properties.push('invalid value for "license", license cannot be nil.')
      end

      if @license.to_s.length < 1
        invalid_properties.push('invalid value for "license", the character length must be great than or equal to 1.')
      end

      if @source_name.nil?
        invalid_properties.push('invalid value for "source_name", source_name cannot be nil.')
      end

      if @source_name.to_s.length < 1
        invalid_properties.push('invalid value for "source_name", the character length must be great than or equal to 1.')
      end

      if @source_url.nil?
        invalid_properties.push('invalid value for "source_url", source_url cannot be nil.')
      end

      if @source_url.to_s.length < 1
        invalid_properties.push('invalid value for "source_url", the character length must be great than or equal to 1.')
      end

      if @spoonacular_source_url.nil?
        invalid_properties.push('invalid value for "spoonacular_source_url", spoonacular_source_url cannot be nil.')
      end

      if @spoonacular_source_url.to_s.length < 1
        invalid_properties.push('invalid value for "spoonacular_source_url", the character length must be great than or equal to 1.')
      end

      if @aggregate_likes.nil?
        invalid_properties.push('invalid value for "aggregate_likes", aggregate_likes cannot be nil.')
      end

      if @health_score.nil?
        invalid_properties.push('invalid value for "health_score", health_score cannot be nil.')
      end

      if @spoonacular_score.nil?
        invalid_properties.push('invalid value for "spoonacular_score", spoonacular_score cannot be nil.')
      end

      if @price_per_serving.nil?
        invalid_properties.push('invalid value for "price_per_serving", price_per_serving cannot be nil.')
      end

      if @analyzed_instructions.nil?
        invalid_properties.push('invalid value for "analyzed_instructions", analyzed_instructions cannot be nil.')
      end

      if @cheap.nil?
        invalid_properties.push('invalid value for "cheap", cheap cannot be nil.')
      end

      if @credits_text.nil?
        invalid_properties.push('invalid value for "credits_text", credits_text cannot be nil.')
      end

      if @credits_text.to_s.length < 1
        invalid_properties.push('invalid value for "credits_text", the character length must be great than or equal to 1.')
      end

      if @cuisines.nil?
        invalid_properties.push('invalid value for "cuisines", cuisines cannot be nil.')
      end

      if @dairy_free.nil?
        invalid_properties.push('invalid value for "dairy_free", dairy_free cannot be nil.')
      end

      if @diets.nil?
        invalid_properties.push('invalid value for "diets", diets cannot be nil.')
      end

      if @gaps.nil?
        invalid_properties.push('invalid value for "gaps", gaps cannot be nil.')
      end

      if @gaps.to_s.length < 1
        invalid_properties.push('invalid value for "gaps", the character length must be great than or equal to 1.')
      end

      if @gluten_free.nil?
        invalid_properties.push('invalid value for "gluten_free", gluten_free cannot be nil.')
      end

      if @instructions.nil?
        invalid_properties.push('invalid value for "instructions", instructions cannot be nil.')
      end

      if @ketogenic.nil?
        invalid_properties.push('invalid value for "ketogenic", ketogenic cannot be nil.')
      end

      if @low_fodmap.nil?
        invalid_properties.push('invalid value for "low_fodmap", low_fodmap cannot be nil.')
      end

      if @occasions.nil?
        invalid_properties.push('invalid value for "occasions", occasions cannot be nil.')
      end

      if @sustainable.nil?
        invalid_properties.push('invalid value for "sustainable", sustainable cannot be nil.')
      end

      if @vegan.nil?
        invalid_properties.push('invalid value for "vegan", vegan cannot be nil.')
      end

      if @vegetarian.nil?
        invalid_properties.push('invalid value for "vegetarian", vegetarian cannot be nil.')
      end

      if @very_healthy.nil?
        invalid_properties.push('invalid value for "very_healthy", very_healthy cannot be nil.')
      end

      if @very_popular.nil?
        invalid_properties.push('invalid value for "very_popular", very_popular cannot be nil.')
      end

      if @whole30.nil?
        invalid_properties.push('invalid value for "whole30", whole30 cannot be nil.')
      end

      if @weight_watcher_smart_points.nil?
        invalid_properties.push('invalid value for "weight_watcher_smart_points", weight_watcher_smart_points cannot be nil.')
      end

      if @dish_types.nil?
        invalid_properties.push('invalid value for "dish_types", dish_types cannot be nil.')
      end

      if @extended_ingredients.nil?
        invalid_properties.push('invalid value for "extended_ingredients", extended_ingredients cannot be nil.')
      end

      if @summary.nil?
        invalid_properties.push('invalid value for "summary", summary cannot be nil.')
      end

      if @summary.to_s.length < 1
        invalid_properties.push('invalid value for "summary", the character length must be great than or equal to 1.')
      end

      if @wine_pairing.nil?
        invalid_properties.push('invalid value for "wine_pairing", wine_pairing cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @title.nil?
      return false if @title.to_s.length < 1
      return false if @image.nil?
      return false if @image.to_s.length < 1
      return false if @image_type.nil?
      return false if @image_type.to_s.length < 1
      return false if @servings.nil?
      return false if @ready_in_minutes.nil?
      return false if @license.nil?
      return false if @license.to_s.length < 1
      return false if @source_name.nil?
      return false if @source_name.to_s.length < 1
      return false if @source_url.nil?
      return false if @source_url.to_s.length < 1
      return false if @spoonacular_source_url.nil?
      return false if @spoonacular_source_url.to_s.length < 1
      return false if @aggregate_likes.nil?
      return false if @health_score.nil?
      return false if @spoonacular_score.nil?
      return false if @price_per_serving.nil?
      return false if @analyzed_instructions.nil?
      return false if @cheap.nil?
      return false if @credits_text.nil?
      return false if @credits_text.to_s.length < 1
      return false if @cuisines.nil?
      return false if @dairy_free.nil?
      return false if @diets.nil?
      return false if @gaps.nil?
      return false if @gaps.to_s.length < 1
      return false if @gluten_free.nil?
      return false if @instructions.nil?
      return false if @ketogenic.nil?
      return false if @low_fodmap.nil?
      return false if @occasions.nil?
      return false if @sustainable.nil?
      return false if @vegan.nil?
      return false if @vegetarian.nil?
      return false if @very_healthy.nil?
      return false if @very_popular.nil?
      return false if @whole30.nil?
      return false if @weight_watcher_smart_points.nil?
      return false if @dish_types.nil?
      return false if @extended_ingredients.nil?
      return false if @summary.nil?
      return false if @summary.to_s.length < 1
      return false if @wine_pairing.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if title.nil?
        fail ArgumentError, 'title cannot be nil'
      end

      if title.to_s.length < 1
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 1.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] image Value to be assigned
    def image=(image)
      if image.nil?
        fail ArgumentError, 'image cannot be nil'
      end

      if image.to_s.length < 1
        fail ArgumentError, 'invalid value for "image", the character length must be great than or equal to 1.'
      end

      @image = image
    end

    # Custom attribute writer method with validation
    # @param [Object] image_type Value to be assigned
    def image_type=(image_type)
      if image_type.nil?
        fail ArgumentError, 'image_type cannot be nil'
      end

      if image_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "image_type", the character length must be great than or equal to 1.'
      end

      @image_type = image_type
    end

    # Custom attribute writer method with validation
    # @param [Object] license Value to be assigned
    def license=(license)
      if license.nil?
        fail ArgumentError, 'license cannot be nil'
      end

      if license.to_s.length < 1
        fail ArgumentError, 'invalid value for "license", the character length must be great than or equal to 1.'
      end

      @license = license
    end

    # Custom attribute writer method with validation
    # @param [Object] source_name Value to be assigned
    def source_name=(source_name)
      if source_name.nil?
        fail ArgumentError, 'source_name cannot be nil'
      end

      if source_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "source_name", the character length must be great than or equal to 1.'
      end

      @source_name = source_name
    end

    # Custom attribute writer method with validation
    # @param [Object] source_url Value to be assigned
    def source_url=(source_url)
      if source_url.nil?
        fail ArgumentError, 'source_url cannot be nil'
      end

      if source_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "source_url", the character length must be great than or equal to 1.'
      end

      @source_url = source_url
    end

    # Custom attribute writer method with validation
    # @param [Object] spoonacular_source_url Value to be assigned
    def spoonacular_source_url=(spoonacular_source_url)
      if spoonacular_source_url.nil?
        fail ArgumentError, 'spoonacular_source_url cannot be nil'
      end

      if spoonacular_source_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "spoonacular_source_url", the character length must be great than or equal to 1.'
      end

      @spoonacular_source_url = spoonacular_source_url
    end

    # Custom attribute writer method with validation
    # @param [Object] credits_text Value to be assigned
    def credits_text=(credits_text)
      if credits_text.nil?
        fail ArgumentError, 'credits_text cannot be nil'
      end

      if credits_text.to_s.length < 1
        fail ArgumentError, 'invalid value for "credits_text", the character length must be great than or equal to 1.'
      end

      @credits_text = credits_text
    end

    # Custom attribute writer method with validation
    # @param [Object] gaps Value to be assigned
    def gaps=(gaps)
      if gaps.nil?
        fail ArgumentError, 'gaps cannot be nil'
      end

      if gaps.to_s.length < 1
        fail ArgumentError, 'invalid value for "gaps", the character length must be great than or equal to 1.'
      end

      @gaps = gaps
    end

    # Custom attribute writer method with validation
    # @param [Object] summary Value to be assigned
    def summary=(summary)
      if summary.nil?
        fail ArgumentError, 'summary cannot be nil'
      end

      if summary.to_s.length < 1
        fail ArgumentError, 'invalid value for "summary", the character length must be great than or equal to 1.'
      end

      @summary = summary
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          image == o.image &&
          image_type == o.image_type &&
          servings == o.servings &&
          ready_in_minutes == o.ready_in_minutes &&
          license == o.license &&
          source_name == o.source_name &&
          source_url == o.source_url &&
          spoonacular_source_url == o.spoonacular_source_url &&
          aggregate_likes == o.aggregate_likes &&
          health_score == o.health_score &&
          spoonacular_score == o.spoonacular_score &&
          price_per_serving == o.price_per_serving &&
          analyzed_instructions == o.analyzed_instructions &&
          cheap == o.cheap &&
          credits_text == o.credits_text &&
          cuisines == o.cuisines &&
          dairy_free == o.dairy_free &&
          diets == o.diets &&
          gaps == o.gaps &&
          gluten_free == o.gluten_free &&
          instructions == o.instructions &&
          ketogenic == o.ketogenic &&
          low_fodmap == o.low_fodmap &&
          occasions == o.occasions &&
          sustainable == o.sustainable &&
          vegan == o.vegan &&
          vegetarian == o.vegetarian &&
          very_healthy == o.very_healthy &&
          very_popular == o.very_popular &&
          whole30 == o.whole30 &&
          weight_watcher_smart_points == o.weight_watcher_smart_points &&
          dish_types == o.dish_types &&
          extended_ingredients == o.extended_ingredients &&
          summary == o.summary &&
          wine_pairing == o.wine_pairing
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, image, image_type, servings, ready_in_minutes, license, source_name, source_url, spoonacular_source_url, aggregate_likes, health_score, spoonacular_score, price_per_serving, analyzed_instructions, cheap, credits_text, cuisines, dairy_free, diets, gaps, gluten_free, instructions, ketogenic, low_fodmap, occasions, sustainable, vegan, vegetarian, very_healthy, very_popular, whole30, weight_watcher_smart_points, dish_types, extended_ingredients, summary, wine_pairing].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        OpenapiClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
