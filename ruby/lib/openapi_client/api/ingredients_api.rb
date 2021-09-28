=begin
#spoonacular API

#The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.0
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'uri'

module OpenapiClient
  class IngredientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Autocomplete Ingredient Search
    # Autocomplete the entry of an ingredient.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @option opts [Boolean] :meta_information Whether to return more meta information about the ingredients.
    # @option opts [String] :intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    # @return [Array<InlineResponse20024>]
    def autocomplete_ingredient_search(opts = {})
      data, _status_code, _headers = autocomplete_ingredient_search_with_http_info(opts)
      data
    end

    # Autocomplete Ingredient Search
    # Autocomplete the entry of an ingredient.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10.
    # @option opts [Boolean] :meta_information Whether to return more meta information about the ingredients.
    # @option opts [String] :intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    # @return [Array<(Array<InlineResponse20024>, Integer, Hash)>] Array<InlineResponse20024> data, response status code and response headers
    def autocomplete_ingredient_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.autocomplete_ingredient_search ...'
      end
      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling IngredientsApi.autocomplete_ingredient_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling IngredientsApi.autocomplete_ingredient_search, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/food/ingredients/autocomplete'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'metaInformation'] = opts[:'meta_information'] if !opts[:'meta_information'].nil?
      query_params[:'intolerances'] = opts[:'intolerances'] if !opts[:'intolerances'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<InlineResponse20024>' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#autocomplete_ingredient_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Compute Ingredient Amount
    # Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
    # @param id [Float] The id of the ingredient you want the amount for.
    # @param nutrient [String] The target nutrient. See a list of supported nutrients.
    # @param target [Float] The target number of the given nutrient.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :unit The target unit.
    # @return [RecipesParseIngredientsNutritionWeightPerServing]
    def compute_ingredient_amount(id, nutrient, target, opts = {})
      data, _status_code, _headers = compute_ingredient_amount_with_http_info(id, nutrient, target, opts)
      data
    end

    # Compute Ingredient Amount
    # Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
    # @param id [Float] The id of the ingredient you want the amount for.
    # @param nutrient [String] The target nutrient. See a list of supported nutrients.
    # @param target [Float] The target number of the given nutrient.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :unit The target unit.
    # @return [Array<(RecipesParseIngredientsNutritionWeightPerServing, Integer, Hash)>] RecipesParseIngredientsNutritionWeightPerServing data, response status code and response headers
    def compute_ingredient_amount_with_http_info(id, nutrient, target, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.compute_ingredient_amount ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IngredientsApi.compute_ingredient_amount"
      end
      # verify the required parameter 'nutrient' is set
      if @api_client.config.client_side_validation && nutrient.nil?
        fail ArgumentError, "Missing the required parameter 'nutrient' when calling IngredientsApi.compute_ingredient_amount"
      end
      # verify the required parameter 'target' is set
      if @api_client.config.client_side_validation && target.nil?
        fail ArgumentError, "Missing the required parameter 'target' when calling IngredientsApi.compute_ingredient_amount"
      end
      # resource path
      local_var_path = '/food/ingredients/{id}/amount'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'nutrient'] = nutrient
      query_params[:'target'] = target
      query_params[:'unit'] = opts[:'unit'] if !opts[:'unit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'RecipesParseIngredientsNutritionWeightPerServing' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#compute_ingredient_amount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ingredient Information
    # Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :amount The amount of this ingredient.
    # @option opts [String] :unit The unit for the given amount.
    # @return [InlineResponse20022]
    def get_ingredient_information(id, opts = {})
      data, _status_code, _headers = get_ingredient_information_with_http_info(id, opts)
      data
    end

    # Get Ingredient Information
    # Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :amount The amount of this ingredient.
    # @option opts [String] :unit The unit for the given amount.
    # @return [Array<(InlineResponse20022, Integer, Hash)>] InlineResponse20022 data, response status code and response headers
    def get_ingredient_information_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.get_ingredient_information ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IngredientsApi.get_ingredient_information"
      end
      # resource path
      local_var_path = '/food/ingredients/{id}/information'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'unit'] = opts[:'unit'] if !opts[:'unit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse20022' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#get_ingredient_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ingredient Substitutes
    # Search for substitutes for a given ingredient.
    # @param ingredient_name [String] The name of the ingredient you want to replace.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20026]
    def get_ingredient_substitutes(ingredient_name, opts = {})
      data, _status_code, _headers = get_ingredient_substitutes_with_http_info(ingredient_name, opts)
      data
    end

    # Get Ingredient Substitutes
    # Search for substitutes for a given ingredient.
    # @param ingredient_name [String] The name of the ingredient you want to replace.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20026, Integer, Hash)>] InlineResponse20026 data, response status code and response headers
    def get_ingredient_substitutes_with_http_info(ingredient_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.get_ingredient_substitutes ...'
      end
      # verify the required parameter 'ingredient_name' is set
      if @api_client.config.client_side_validation && ingredient_name.nil?
        fail ArgumentError, "Missing the required parameter 'ingredient_name' when calling IngredientsApi.get_ingredient_substitutes"
      end
      # resource path
      local_var_path = '/food/ingredients/substitutes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ingredientName'] = ingredient_name

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse20026' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#get_ingredient_substitutes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ingredient Substitutes by ID
    # Search for substitutes for a given ingredient.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20026]
    def get_ingredient_substitutes_by_id(id, opts = {})
      data, _status_code, _headers = get_ingredient_substitutes_by_id_with_http_info(id, opts)
      data
    end

    # Get Ingredient Substitutes by ID
    # Search for substitutes for a given ingredient.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20026, Integer, Hash)>] InlineResponse20026 data, response status code and response headers
    def get_ingredient_substitutes_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.get_ingredient_substitutes_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IngredientsApi.get_ingredient_substitutes_by_id"
      end
      # resource path
      local_var_path = '/food/ingredients/{id}/substitutes'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse20026' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#get_ingredient_substitutes_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ingredient Search
    # Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Boolean] :add_children Whether to add children of found foods.
    # @option opts [Float] :min_protein_percent The minimum percentage of protein the food must have (between 0 and 100).
    # @option opts [Float] :max_protein_percent The maximum percentage of protein the food can have (between 0 and 100).
    # @option opts [Float] :min_fat_percent The minimum percentage of fat the food must have (between 0 and 100).
    # @option opts [Float] :max_fat_percent The maximum percentage of fat the food can have (between 0 and 100).
    # @option opts [Float] :min_carbs_percent The minimum percentage of carbs the food must have (between 0 and 100).
    # @option opts [Float] :max_carbs_percent The maximum percentage of carbs the food can have (between 0 and 100).
    # @option opts [Boolean] :meta_information Whether to return more meta information about the ingredients.
    # @option opts [String] :intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    # @option opts [String] :sort The strategy to sort recipes by. See a full list of supported sorting options.
    # @option opts [String] :sort_direction The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @return [InlineResponse20025]
    def ingredient_search(opts = {})
      data, _status_code, _headers = ingredient_search_with_http_info(opts)
      data
    end

    # Ingredient Search
    # Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Boolean] :add_children Whether to add children of found foods.
    # @option opts [Float] :min_protein_percent The minimum percentage of protein the food must have (between 0 and 100).
    # @option opts [Float] :max_protein_percent The maximum percentage of protein the food can have (between 0 and 100).
    # @option opts [Float] :min_fat_percent The minimum percentage of fat the food must have (between 0 and 100).
    # @option opts [Float] :max_fat_percent The maximum percentage of fat the food can have (between 0 and 100).
    # @option opts [Float] :min_carbs_percent The minimum percentage of carbs the food must have (between 0 and 100).
    # @option opts [Float] :max_carbs_percent The maximum percentage of carbs the food can have (between 0 and 100).
    # @option opts [Boolean] :meta_information Whether to return more meta information about the ingredients.
    # @option opts [String] :intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    # @option opts [String] :sort The strategy to sort recipes by. See a full list of supported sorting options.
    # @option opts [String] :sort_direction The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10.
    # @return [Array<(InlineResponse20025, Integer, Hash)>] InlineResponse20025 data, response status code and response headers
    def ingredient_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.ingredient_search ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 900
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling IngredientsApi.ingredient_search, must be smaller than or equal to 900.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling IngredientsApi.ingredient_search, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling IngredientsApi.ingredient_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling IngredientsApi.ingredient_search, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/food/ingredients/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'addChildren'] = opts[:'add_children'] if !opts[:'add_children'].nil?
      query_params[:'minProteinPercent'] = opts[:'min_protein_percent'] if !opts[:'min_protein_percent'].nil?
      query_params[:'maxProteinPercent'] = opts[:'max_protein_percent'] if !opts[:'max_protein_percent'].nil?
      query_params[:'minFatPercent'] = opts[:'min_fat_percent'] if !opts[:'min_fat_percent'].nil?
      query_params[:'maxFatPercent'] = opts[:'max_fat_percent'] if !opts[:'max_fat_percent'].nil?
      query_params[:'minCarbsPercent'] = opts[:'min_carbs_percent'] if !opts[:'min_carbs_percent'].nil?
      query_params[:'maxCarbsPercent'] = opts[:'max_carbs_percent'] if !opts[:'max_carbs_percent'].nil?
      query_params[:'metaInformation'] = opts[:'meta_information'] if !opts[:'meta_information'].nil?
      query_params[:'intolerances'] = opts[:'intolerances'] if !opts[:'intolerances'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sortDirection'] = opts[:'sort_direction'] if !opts[:'sort_direction'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse20025' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#ingredient_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ingredients by ID Image
    # Visualize a recipe's ingredient list.
    # @param id [Float] The recipe id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
    # @return [Object]
    def ingredients_by_id_image(id, opts = {})
      data, _status_code, _headers = ingredients_by_id_image_with_http_info(id, opts)
      data
    end

    # Ingredients by ID Image
    # Visualize a recipe&#39;s ingredient list.
    # @param id [Float] The recipe id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def ingredients_by_id_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.ingredients_by_id_image ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IngredientsApi.ingredients_by_id_image"
      end
      allowable_values = ["us", "metric"]
      if @api_client.config.client_side_validation && opts[:'measure'] && !allowable_values.include?(opts[:'measure'])
        fail ArgumentError, "invalid value for \"measure\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/recipes/{id}/ingredientWidget.png'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'measure'] = opts[:'measure'] if !opts[:'measure'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#ingredients_by_id_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Map Ingredients to Grocery Products
    # Map a set of ingredients to products you can buy in the grocery store.
    # @param inline_object2 [InlineObject2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20034>]
    def map_ingredients_to_grocery_products(inline_object2, opts = {})
      data, _status_code, _headers = map_ingredients_to_grocery_products_with_http_info(inline_object2, opts)
      data
    end

    # Map Ingredients to Grocery Products
    # Map a set of ingredients to products you can buy in the grocery store.
    # @param inline_object2 [InlineObject2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20034>, Integer, Hash)>] Array<InlineResponse20034> data, response status code and response headers
    def map_ingredients_to_grocery_products_with_http_info(inline_object2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.map_ingredients_to_grocery_products ...'
      end
      # verify the required parameter 'inline_object2' is set
      if @api_client.config.client_side_validation && inline_object2.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object2' when calling IngredientsApi.map_ingredients_to_grocery_products"
      end
      # resource path
      local_var_path = '/food/ingredients/map'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object2) 

      # return_type
      return_type = opts[:return_type] || 'Array<InlineResponse20034>' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#map_ingredients_to_grocery_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ingredients Widget
    # Visualize ingredients of a recipe. You can play around with that endpoint!
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type The content type.
    # @option opts [String] :language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
    # @option opts [String] :accept Accept header.
    # @return [String]
    def visualize_ingredients(opts = {})
      data, _status_code, _headers = visualize_ingredients_with_http_info(opts)
      data
    end

    # Ingredients Widget
    # Visualize ingredients of a recipe. You can play around with that endpoint!
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type The content type.
    # @option opts [String] :language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
    # @option opts [String] :accept Accept header.
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def visualize_ingredients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.visualize_ingredients ...'
      end
      allowable_values = ["application/x-www-form-urlencoded", "application/json", "multipart/form-data"]
      if @api_client.config.client_side_validation && opts[:'content_type'] && !allowable_values.include?(opts[:'content_type'])
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["en", "de"]
      if @api_client.config.client_side_validation && opts[:'language'] && !allowable_values.include?(opts[:'language'])
        fail ArgumentError, "invalid value for \"language\", must be one of #{allowable_values}"
      end
      allowable_values = ["application/json", "text/html", "media/*"]
      if @api_client.config.client_side_validation && opts[:'accept'] && !allowable_values.include?(opts[:'accept'])
        fail ArgumentError, "invalid value for \"accept\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/recipes/visualizeIngredients'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      header_params[:'Content-Type'] = opts[:'content_type'] if !opts[:'content_type'].nil?
      header_params[:'Accept'] = opts[:'accept'] if !opts[:'accept'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'String' 

      # auth_names
      auth_names = opts[:auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#visualize_ingredients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
