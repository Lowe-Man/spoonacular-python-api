# coding: utf-8

"""
    spoonacular API

    The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.  # noqa: E501

    The version of the OpenAPI document: 1.0
    Contact: mail@spoonacular.com
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six


class InlineResponse2006Recipes(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'id': 'int',
        'title': 'str',
        'image': 'str',
        'image_type': 'str',
        'servings': 'float',
        'ready_in_minutes': 'int',
        'license': 'str',
        'source_name': 'str',
        'source_url': 'str',
        'spoonacular_source_url': 'str',
        'aggregate_likes': 'float',
        'health_score': 'float',
        'spoonacular_score': 'float',
        'price_per_serving': 'float',
        'analyzed_instructions': 'list[object]',
        'cheap': 'bool',
        'credits_text': 'str',
        'cuisines': 'list[str]',
        'dairy_free': 'bool',
        'diets': 'list[str]',
        'gaps': 'str',
        'gluten_free': 'bool',
        'instructions': 'str',
        'ketogenic': 'bool',
        'low_fodmap': 'bool',
        'occasions': 'list[str]',
        'sustainable': 'bool',
        'vegan': 'bool',
        'vegetarian': 'bool',
        'very_healthy': 'bool',
        'very_popular': 'bool',
        'whole30': 'bool',
        'weight_watcher_smart_points': 'float',
        'dish_types': 'list[str]',
        'extended_ingredients': 'list[InlineResponse2003ExtendedIngredients]',
        'summary': 'str',
        'wine_pairing': 'InlineResponse2003WinePairing'
    }

    attribute_map = {
        'id': 'id',
        'title': 'title',
        'image': 'image',
        'image_type': 'imageType',
        'servings': 'servings',
        'ready_in_minutes': 'readyInMinutes',
        'license': 'license',
        'source_name': 'sourceName',
        'source_url': 'sourceUrl',
        'spoonacular_source_url': 'spoonacularSourceUrl',
        'aggregate_likes': 'aggregateLikes',
        'health_score': 'healthScore',
        'spoonacular_score': 'spoonacularScore',
        'price_per_serving': 'pricePerServing',
        'analyzed_instructions': 'analyzedInstructions',
        'cheap': 'cheap',
        'credits_text': 'creditsText',
        'cuisines': 'cuisines',
        'dairy_free': 'dairyFree',
        'diets': 'diets',
        'gaps': 'gaps',
        'gluten_free': 'glutenFree',
        'instructions': 'instructions',
        'ketogenic': 'ketogenic',
        'low_fodmap': 'lowFodmap',
        'occasions': 'occasions',
        'sustainable': 'sustainable',
        'vegan': 'vegan',
        'vegetarian': 'vegetarian',
        'very_healthy': 'veryHealthy',
        'very_popular': 'veryPopular',
        'whole30': 'whole30',
        'weight_watcher_smart_points': 'weightWatcherSmartPoints',
        'dish_types': 'dishTypes',
        'extended_ingredients': 'extendedIngredients',
        'summary': 'summary',
        'wine_pairing': 'winePairing'
    }

    def __init__(self, id=None, title=None, image=None, image_type=None, servings=None, ready_in_minutes=None, license=None, source_name=None, source_url=None, spoonacular_source_url=None, aggregate_likes=None, health_score=None, spoonacular_score=None, price_per_serving=None, analyzed_instructions=None, cheap=None, credits_text=None, cuisines=None, dairy_free=None, diets=None, gaps=None, gluten_free=None, instructions=None, ketogenic=None, low_fodmap=None, occasions=None, sustainable=None, vegan=None, vegetarian=None, very_healthy=None, very_popular=None, whole30=None, weight_watcher_smart_points=None, dish_types=None, extended_ingredients=None, summary=None, wine_pairing=None):  # noqa: E501
        """InlineResponse2006Recipes - a model defined in OpenAPI"""  # noqa: E501

        self._id = None
        self._title = None
        self._image = None
        self._image_type = None
        self._servings = None
        self._ready_in_minutes = None
        self._license = None
        self._source_name = None
        self._source_url = None
        self._spoonacular_source_url = None
        self._aggregate_likes = None
        self._health_score = None
        self._spoonacular_score = None
        self._price_per_serving = None
        self._analyzed_instructions = None
        self._cheap = None
        self._credits_text = None
        self._cuisines = None
        self._dairy_free = None
        self._diets = None
        self._gaps = None
        self._gluten_free = None
        self._instructions = None
        self._ketogenic = None
        self._low_fodmap = None
        self._occasions = None
        self._sustainable = None
        self._vegan = None
        self._vegetarian = None
        self._very_healthy = None
        self._very_popular = None
        self._whole30 = None
        self._weight_watcher_smart_points = None
        self._dish_types = None
        self._extended_ingredients = None
        self._summary = None
        self._wine_pairing = None
        self.discriminator = None

        self.id = id
        self.title = title
        self.image = image
        self.image_type = image_type
        self.servings = servings
        self.ready_in_minutes = ready_in_minutes
        self.license = license
        self.source_name = source_name
        self.source_url = source_url
        self.spoonacular_source_url = spoonacular_source_url
        self.aggregate_likes = aggregate_likes
        self.health_score = health_score
        self.spoonacular_score = spoonacular_score
        self.price_per_serving = price_per_serving
        if analyzed_instructions is not None:
            self.analyzed_instructions = analyzed_instructions
        self.cheap = cheap
        self.credits_text = credits_text
        if cuisines is not None:
            self.cuisines = cuisines
        self.dairy_free = dairy_free
        if diets is not None:
            self.diets = diets
        self.gaps = gaps
        self.gluten_free = gluten_free
        self.instructions = instructions
        self.ketogenic = ketogenic
        self.low_fodmap = low_fodmap
        if occasions is not None:
            self.occasions = occasions
        self.sustainable = sustainable
        self.vegan = vegan
        self.vegetarian = vegetarian
        self.very_healthy = very_healthy
        self.very_popular = very_popular
        self.whole30 = whole30
        self.weight_watcher_smart_points = weight_watcher_smart_points
        if dish_types is not None:
            self.dish_types = dish_types
        if extended_ingredients is not None:
            self.extended_ingredients = extended_ingredients
        self.summary = summary
        if wine_pairing is not None:
            self.wine_pairing = wine_pairing

    @property
    def id(self):
        """Gets the id of this InlineResponse2006Recipes.  # noqa: E501


        :return: The id of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this InlineResponse2006Recipes.


        :param id: The id of this InlineResponse2006Recipes.  # noqa: E501
        :type: int
        """
        if id is None:
            raise ValueError("Invalid value for `id`, must not be `None`")  # noqa: E501

        self._id = id

    @property
    def title(self):
        """Gets the title of this InlineResponse2006Recipes.  # noqa: E501


        :return: The title of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._title

    @title.setter
    def title(self, title):
        """Sets the title of this InlineResponse2006Recipes.


        :param title: The title of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if title is None:
            raise ValueError("Invalid value for `title`, must not be `None`")  # noqa: E501
        if title is not None and len(title) < 1:
            raise ValueError("Invalid value for `title`, length must be greater than or equal to `1`")  # noqa: E501

        self._title = title

    @property
    def image(self):
        """Gets the image of this InlineResponse2006Recipes.  # noqa: E501


        :return: The image of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._image

    @image.setter
    def image(self, image):
        """Sets the image of this InlineResponse2006Recipes.


        :param image: The image of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if image is None:
            raise ValueError("Invalid value for `image`, must not be `None`")  # noqa: E501
        if image is not None and len(image) < 1:
            raise ValueError("Invalid value for `image`, length must be greater than or equal to `1`")  # noqa: E501

        self._image = image

    @property
    def image_type(self):
        """Gets the image_type of this InlineResponse2006Recipes.  # noqa: E501


        :return: The image_type of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._image_type

    @image_type.setter
    def image_type(self, image_type):
        """Sets the image_type of this InlineResponse2006Recipes.


        :param image_type: The image_type of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if image_type is None:
            raise ValueError("Invalid value for `image_type`, must not be `None`")  # noqa: E501
        if image_type is not None and len(image_type) < 1:
            raise ValueError("Invalid value for `image_type`, length must be greater than or equal to `1`")  # noqa: E501

        self._image_type = image_type

    @property
    def servings(self):
        """Gets the servings of this InlineResponse2006Recipes.  # noqa: E501


        :return: The servings of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: float
        """
        return self._servings

    @servings.setter
    def servings(self, servings):
        """Sets the servings of this InlineResponse2006Recipes.


        :param servings: The servings of this InlineResponse2006Recipes.  # noqa: E501
        :type: float
        """
        if servings is None:
            raise ValueError("Invalid value for `servings`, must not be `None`")  # noqa: E501

        self._servings = servings

    @property
    def ready_in_minutes(self):
        """Gets the ready_in_minutes of this InlineResponse2006Recipes.  # noqa: E501


        :return: The ready_in_minutes of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: int
        """
        return self._ready_in_minutes

    @ready_in_minutes.setter
    def ready_in_minutes(self, ready_in_minutes):
        """Sets the ready_in_minutes of this InlineResponse2006Recipes.


        :param ready_in_minutes: The ready_in_minutes of this InlineResponse2006Recipes.  # noqa: E501
        :type: int
        """
        if ready_in_minutes is None:
            raise ValueError("Invalid value for `ready_in_minutes`, must not be `None`")  # noqa: E501

        self._ready_in_minutes = ready_in_minutes

    @property
    def license(self):
        """Gets the license of this InlineResponse2006Recipes.  # noqa: E501


        :return: The license of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._license

    @license.setter
    def license(self, license):
        """Sets the license of this InlineResponse2006Recipes.


        :param license: The license of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if license is None:
            raise ValueError("Invalid value for `license`, must not be `None`")  # noqa: E501
        if license is not None and len(license) < 1:
            raise ValueError("Invalid value for `license`, length must be greater than or equal to `1`")  # noqa: E501

        self._license = license

    @property
    def source_name(self):
        """Gets the source_name of this InlineResponse2006Recipes.  # noqa: E501


        :return: The source_name of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._source_name

    @source_name.setter
    def source_name(self, source_name):
        """Sets the source_name of this InlineResponse2006Recipes.


        :param source_name: The source_name of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if source_name is None:
            raise ValueError("Invalid value for `source_name`, must not be `None`")  # noqa: E501
        if source_name is not None and len(source_name) < 1:
            raise ValueError("Invalid value for `source_name`, length must be greater than or equal to `1`")  # noqa: E501

        self._source_name = source_name

    @property
    def source_url(self):
        """Gets the source_url of this InlineResponse2006Recipes.  # noqa: E501


        :return: The source_url of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._source_url

    @source_url.setter
    def source_url(self, source_url):
        """Sets the source_url of this InlineResponse2006Recipes.


        :param source_url: The source_url of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if source_url is None:
            raise ValueError("Invalid value for `source_url`, must not be `None`")  # noqa: E501
        if source_url is not None and len(source_url) < 1:
            raise ValueError("Invalid value for `source_url`, length must be greater than or equal to `1`")  # noqa: E501

        self._source_url = source_url

    @property
    def spoonacular_source_url(self):
        """Gets the spoonacular_source_url of this InlineResponse2006Recipes.  # noqa: E501


        :return: The spoonacular_source_url of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._spoonacular_source_url

    @spoonacular_source_url.setter
    def spoonacular_source_url(self, spoonacular_source_url):
        """Sets the spoonacular_source_url of this InlineResponse2006Recipes.


        :param spoonacular_source_url: The spoonacular_source_url of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if spoonacular_source_url is None:
            raise ValueError("Invalid value for `spoonacular_source_url`, must not be `None`")  # noqa: E501
        if spoonacular_source_url is not None and len(spoonacular_source_url) < 1:
            raise ValueError("Invalid value for `spoonacular_source_url`, length must be greater than or equal to `1`")  # noqa: E501

        self._spoonacular_source_url = spoonacular_source_url

    @property
    def aggregate_likes(self):
        """Gets the aggregate_likes of this InlineResponse2006Recipes.  # noqa: E501


        :return: The aggregate_likes of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: float
        """
        return self._aggregate_likes

    @aggregate_likes.setter
    def aggregate_likes(self, aggregate_likes):
        """Sets the aggregate_likes of this InlineResponse2006Recipes.


        :param aggregate_likes: The aggregate_likes of this InlineResponse2006Recipes.  # noqa: E501
        :type: float
        """
        if aggregate_likes is None:
            raise ValueError("Invalid value for `aggregate_likes`, must not be `None`")  # noqa: E501

        self._aggregate_likes = aggregate_likes

    @property
    def health_score(self):
        """Gets the health_score of this InlineResponse2006Recipes.  # noqa: E501


        :return: The health_score of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: float
        """
        return self._health_score

    @health_score.setter
    def health_score(self, health_score):
        """Sets the health_score of this InlineResponse2006Recipes.


        :param health_score: The health_score of this InlineResponse2006Recipes.  # noqa: E501
        :type: float
        """
        if health_score is None:
            raise ValueError("Invalid value for `health_score`, must not be `None`")  # noqa: E501

        self._health_score = health_score

    @property
    def spoonacular_score(self):
        """Gets the spoonacular_score of this InlineResponse2006Recipes.  # noqa: E501


        :return: The spoonacular_score of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: float
        """
        return self._spoonacular_score

    @spoonacular_score.setter
    def spoonacular_score(self, spoonacular_score):
        """Sets the spoonacular_score of this InlineResponse2006Recipes.


        :param spoonacular_score: The spoonacular_score of this InlineResponse2006Recipes.  # noqa: E501
        :type: float
        """
        if spoonacular_score is None:
            raise ValueError("Invalid value for `spoonacular_score`, must not be `None`")  # noqa: E501

        self._spoonacular_score = spoonacular_score

    @property
    def price_per_serving(self):
        """Gets the price_per_serving of this InlineResponse2006Recipes.  # noqa: E501


        :return: The price_per_serving of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: float
        """
        return self._price_per_serving

    @price_per_serving.setter
    def price_per_serving(self, price_per_serving):
        """Sets the price_per_serving of this InlineResponse2006Recipes.


        :param price_per_serving: The price_per_serving of this InlineResponse2006Recipes.  # noqa: E501
        :type: float
        """
        if price_per_serving is None:
            raise ValueError("Invalid value for `price_per_serving`, must not be `None`")  # noqa: E501

        self._price_per_serving = price_per_serving

    @property
    def analyzed_instructions(self):
        """Gets the analyzed_instructions of this InlineResponse2006Recipes.  # noqa: E501


        :return: The analyzed_instructions of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: list[object]
        """
        return self._analyzed_instructions

    @analyzed_instructions.setter
    def analyzed_instructions(self, analyzed_instructions):
        """Sets the analyzed_instructions of this InlineResponse2006Recipes.


        :param analyzed_instructions: The analyzed_instructions of this InlineResponse2006Recipes.  # noqa: E501
        :type: list[object]
        """

        self._analyzed_instructions = analyzed_instructions

    @property
    def cheap(self):
        """Gets the cheap of this InlineResponse2006Recipes.  # noqa: E501


        :return: The cheap of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._cheap

    @cheap.setter
    def cheap(self, cheap):
        """Sets the cheap of this InlineResponse2006Recipes.


        :param cheap: The cheap of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if cheap is None:
            raise ValueError("Invalid value for `cheap`, must not be `None`")  # noqa: E501

        self._cheap = cheap

    @property
    def credits_text(self):
        """Gets the credits_text of this InlineResponse2006Recipes.  # noqa: E501


        :return: The credits_text of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._credits_text

    @credits_text.setter
    def credits_text(self, credits_text):
        """Sets the credits_text of this InlineResponse2006Recipes.


        :param credits_text: The credits_text of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if credits_text is None:
            raise ValueError("Invalid value for `credits_text`, must not be `None`")  # noqa: E501
        if credits_text is not None and len(credits_text) < 1:
            raise ValueError("Invalid value for `credits_text`, length must be greater than or equal to `1`")  # noqa: E501

        self._credits_text = credits_text

    @property
    def cuisines(self):
        """Gets the cuisines of this InlineResponse2006Recipes.  # noqa: E501


        :return: The cuisines of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: list[str]
        """
        return self._cuisines

    @cuisines.setter
    def cuisines(self, cuisines):
        """Sets the cuisines of this InlineResponse2006Recipes.


        :param cuisines: The cuisines of this InlineResponse2006Recipes.  # noqa: E501
        :type: list[str]
        """

        self._cuisines = cuisines

    @property
    def dairy_free(self):
        """Gets the dairy_free of this InlineResponse2006Recipes.  # noqa: E501


        :return: The dairy_free of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._dairy_free

    @dairy_free.setter
    def dairy_free(self, dairy_free):
        """Sets the dairy_free of this InlineResponse2006Recipes.


        :param dairy_free: The dairy_free of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if dairy_free is None:
            raise ValueError("Invalid value for `dairy_free`, must not be `None`")  # noqa: E501

        self._dairy_free = dairy_free

    @property
    def diets(self):
        """Gets the diets of this InlineResponse2006Recipes.  # noqa: E501


        :return: The diets of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: list[str]
        """
        return self._diets

    @diets.setter
    def diets(self, diets):
        """Sets the diets of this InlineResponse2006Recipes.


        :param diets: The diets of this InlineResponse2006Recipes.  # noqa: E501
        :type: list[str]
        """

        self._diets = diets

    @property
    def gaps(self):
        """Gets the gaps of this InlineResponse2006Recipes.  # noqa: E501


        :return: The gaps of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._gaps

    @gaps.setter
    def gaps(self, gaps):
        """Sets the gaps of this InlineResponse2006Recipes.


        :param gaps: The gaps of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if gaps is None:
            raise ValueError("Invalid value for `gaps`, must not be `None`")  # noqa: E501
        if gaps is not None and len(gaps) < 1:
            raise ValueError("Invalid value for `gaps`, length must be greater than or equal to `1`")  # noqa: E501

        self._gaps = gaps

    @property
    def gluten_free(self):
        """Gets the gluten_free of this InlineResponse2006Recipes.  # noqa: E501


        :return: The gluten_free of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._gluten_free

    @gluten_free.setter
    def gluten_free(self, gluten_free):
        """Sets the gluten_free of this InlineResponse2006Recipes.


        :param gluten_free: The gluten_free of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if gluten_free is None:
            raise ValueError("Invalid value for `gluten_free`, must not be `None`")  # noqa: E501

        self._gluten_free = gluten_free

    @property
    def instructions(self):
        """Gets the instructions of this InlineResponse2006Recipes.  # noqa: E501


        :return: The instructions of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._instructions

    @instructions.setter
    def instructions(self, instructions):
        """Sets the instructions of this InlineResponse2006Recipes.


        :param instructions: The instructions of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if instructions is None:
            raise ValueError("Invalid value for `instructions`, must not be `None`")  # noqa: E501

        self._instructions = instructions

    @property
    def ketogenic(self):
        """Gets the ketogenic of this InlineResponse2006Recipes.  # noqa: E501


        :return: The ketogenic of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._ketogenic

    @ketogenic.setter
    def ketogenic(self, ketogenic):
        """Sets the ketogenic of this InlineResponse2006Recipes.


        :param ketogenic: The ketogenic of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if ketogenic is None:
            raise ValueError("Invalid value for `ketogenic`, must not be `None`")  # noqa: E501

        self._ketogenic = ketogenic

    @property
    def low_fodmap(self):
        """Gets the low_fodmap of this InlineResponse2006Recipes.  # noqa: E501


        :return: The low_fodmap of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._low_fodmap

    @low_fodmap.setter
    def low_fodmap(self, low_fodmap):
        """Sets the low_fodmap of this InlineResponse2006Recipes.


        :param low_fodmap: The low_fodmap of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if low_fodmap is None:
            raise ValueError("Invalid value for `low_fodmap`, must not be `None`")  # noqa: E501

        self._low_fodmap = low_fodmap

    @property
    def occasions(self):
        """Gets the occasions of this InlineResponse2006Recipes.  # noqa: E501


        :return: The occasions of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: list[str]
        """
        return self._occasions

    @occasions.setter
    def occasions(self, occasions):
        """Sets the occasions of this InlineResponse2006Recipes.


        :param occasions: The occasions of this InlineResponse2006Recipes.  # noqa: E501
        :type: list[str]
        """

        self._occasions = occasions

    @property
    def sustainable(self):
        """Gets the sustainable of this InlineResponse2006Recipes.  # noqa: E501


        :return: The sustainable of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._sustainable

    @sustainable.setter
    def sustainable(self, sustainable):
        """Sets the sustainable of this InlineResponse2006Recipes.


        :param sustainable: The sustainable of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if sustainable is None:
            raise ValueError("Invalid value for `sustainable`, must not be `None`")  # noqa: E501

        self._sustainable = sustainable

    @property
    def vegan(self):
        """Gets the vegan of this InlineResponse2006Recipes.  # noqa: E501


        :return: The vegan of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._vegan

    @vegan.setter
    def vegan(self, vegan):
        """Sets the vegan of this InlineResponse2006Recipes.


        :param vegan: The vegan of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if vegan is None:
            raise ValueError("Invalid value for `vegan`, must not be `None`")  # noqa: E501

        self._vegan = vegan

    @property
    def vegetarian(self):
        """Gets the vegetarian of this InlineResponse2006Recipes.  # noqa: E501


        :return: The vegetarian of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._vegetarian

    @vegetarian.setter
    def vegetarian(self, vegetarian):
        """Sets the vegetarian of this InlineResponse2006Recipes.


        :param vegetarian: The vegetarian of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if vegetarian is None:
            raise ValueError("Invalid value for `vegetarian`, must not be `None`")  # noqa: E501

        self._vegetarian = vegetarian

    @property
    def very_healthy(self):
        """Gets the very_healthy of this InlineResponse2006Recipes.  # noqa: E501


        :return: The very_healthy of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._very_healthy

    @very_healthy.setter
    def very_healthy(self, very_healthy):
        """Sets the very_healthy of this InlineResponse2006Recipes.


        :param very_healthy: The very_healthy of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if very_healthy is None:
            raise ValueError("Invalid value for `very_healthy`, must not be `None`")  # noqa: E501

        self._very_healthy = very_healthy

    @property
    def very_popular(self):
        """Gets the very_popular of this InlineResponse2006Recipes.  # noqa: E501


        :return: The very_popular of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._very_popular

    @very_popular.setter
    def very_popular(self, very_popular):
        """Sets the very_popular of this InlineResponse2006Recipes.


        :param very_popular: The very_popular of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if very_popular is None:
            raise ValueError("Invalid value for `very_popular`, must not be `None`")  # noqa: E501

        self._very_popular = very_popular

    @property
    def whole30(self):
        """Gets the whole30 of this InlineResponse2006Recipes.  # noqa: E501


        :return: The whole30 of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: bool
        """
        return self._whole30

    @whole30.setter
    def whole30(self, whole30):
        """Sets the whole30 of this InlineResponse2006Recipes.


        :param whole30: The whole30 of this InlineResponse2006Recipes.  # noqa: E501
        :type: bool
        """
        if whole30 is None:
            raise ValueError("Invalid value for `whole30`, must not be `None`")  # noqa: E501

        self._whole30 = whole30

    @property
    def weight_watcher_smart_points(self):
        """Gets the weight_watcher_smart_points of this InlineResponse2006Recipes.  # noqa: E501


        :return: The weight_watcher_smart_points of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: float
        """
        return self._weight_watcher_smart_points

    @weight_watcher_smart_points.setter
    def weight_watcher_smart_points(self, weight_watcher_smart_points):
        """Sets the weight_watcher_smart_points of this InlineResponse2006Recipes.


        :param weight_watcher_smart_points: The weight_watcher_smart_points of this InlineResponse2006Recipes.  # noqa: E501
        :type: float
        """
        if weight_watcher_smart_points is None:
            raise ValueError("Invalid value for `weight_watcher_smart_points`, must not be `None`")  # noqa: E501

        self._weight_watcher_smart_points = weight_watcher_smart_points

    @property
    def dish_types(self):
        """Gets the dish_types of this InlineResponse2006Recipes.  # noqa: E501


        :return: The dish_types of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: list[str]
        """
        return self._dish_types

    @dish_types.setter
    def dish_types(self, dish_types):
        """Sets the dish_types of this InlineResponse2006Recipes.


        :param dish_types: The dish_types of this InlineResponse2006Recipes.  # noqa: E501
        :type: list[str]
        """

        self._dish_types = dish_types

    @property
    def extended_ingredients(self):
        """Gets the extended_ingredients of this InlineResponse2006Recipes.  # noqa: E501


        :return: The extended_ingredients of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: list[InlineResponse2003ExtendedIngredients]
        """
        return self._extended_ingredients

    @extended_ingredients.setter
    def extended_ingredients(self, extended_ingredients):
        """Sets the extended_ingredients of this InlineResponse2006Recipes.


        :param extended_ingredients: The extended_ingredients of this InlineResponse2006Recipes.  # noqa: E501
        :type: list[InlineResponse2003ExtendedIngredients]
        """

        self._extended_ingredients = extended_ingredients

    @property
    def summary(self):
        """Gets the summary of this InlineResponse2006Recipes.  # noqa: E501


        :return: The summary of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: str
        """
        return self._summary

    @summary.setter
    def summary(self, summary):
        """Sets the summary of this InlineResponse2006Recipes.


        :param summary: The summary of this InlineResponse2006Recipes.  # noqa: E501
        :type: str
        """
        if summary is None:
            raise ValueError("Invalid value for `summary`, must not be `None`")  # noqa: E501
        if summary is not None and len(summary) < 1:
            raise ValueError("Invalid value for `summary`, length must be greater than or equal to `1`")  # noqa: E501

        self._summary = summary

    @property
    def wine_pairing(self):
        """Gets the wine_pairing of this InlineResponse2006Recipes.  # noqa: E501


        :return: The wine_pairing of this InlineResponse2006Recipes.  # noqa: E501
        :rtype: InlineResponse2003WinePairing
        """
        return self._wine_pairing

    @wine_pairing.setter
    def wine_pairing(self, wine_pairing):
        """Sets the wine_pairing of this InlineResponse2006Recipes.


        :param wine_pairing: The wine_pairing of this InlineResponse2006Recipes.  # noqa: E501
        :type: InlineResponse2003WinePairing
        """

        self._wine_pairing = wine_pairing

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, InlineResponse2006Recipes):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
