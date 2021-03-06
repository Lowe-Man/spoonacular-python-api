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


class InlineResponse2001(object):
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
        'image': 'str',
        'image_type': 'str',
        'likes': 'int',
        'missed_ingredient_count': 'int',
        'missed_ingredients': 'list[RecipesFindByIngredientsMissedIngredients]',
        'title': 'str',
        'unused_ingredients': 'list[object]',
        'used_ingredient_count': 'float',
        'used_ingredients': 'list[RecipesFindByIngredientsMissedIngredients]',
        '': 'str'
    }

    attribute_map = {
        'id': 'id',
        'image': 'image',
        'image_type': 'imageType',
        'likes': 'likes',
        'missed_ingredient_count': 'missedIngredientCount',
        'missed_ingredients': 'missedIngredients',
        'title': 'title',
        'unused_ingredients': 'unusedIngredients',
        'used_ingredient_count': 'usedIngredientCount',
        'used_ingredients': 'usedIngredients',
        '': ''
    }

    def __init__(self, id=None, image=None, image_type=None, likes=None, missed_ingredient_count=None, missed_ingredients=None, title=None, unused_ingredients=None, used_ingredient_count=None, used_ingredients=None, =None):  # noqa: E501
        """InlineResponse2001 - a model defined in OpenAPI"""  # noqa: E501

        self._id = None
        self._image = None
        self._image_type = None
        self._likes = None
        self._missed_ingredient_count = None
        self._missed_ingredients = None
        self._title = None
        self._unused_ingredients = None
        self._used_ingredient_count = None
        self._used_ingredients = None
        self._ = None
        self.discriminator = None

        self.id = id
        self.image = image
        self.image_type = image_type
        self.likes = likes
        self.missed_ingredient_count = missed_ingredient_count
        self.missed_ingredients = missed_ingredients
        self.title = title
        self.unused_ingredients = unused_ingredients
        self.used_ingredient_count = used_ingredient_count
        self.used_ingredients = used_ingredients
        if  is not None:
            self. = 

    @property
    def id(self):
        """Gets the id of this InlineResponse2001.  # noqa: E501


        :return: The id of this InlineResponse2001.  # noqa: E501
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this InlineResponse2001.


        :param id: The id of this InlineResponse2001.  # noqa: E501
        :type: int
        """
        if id is None:
            raise ValueError("Invalid value for `id`, must not be `None`")  # noqa: E501

        self._id = id

    @property
    def image(self):
        """Gets the image of this InlineResponse2001.  # noqa: E501


        :return: The image of this InlineResponse2001.  # noqa: E501
        :rtype: str
        """
        return self._image

    @image.setter
    def image(self, image):
        """Sets the image of this InlineResponse2001.


        :param image: The image of this InlineResponse2001.  # noqa: E501
        :type: str
        """
        if image is None:
            raise ValueError("Invalid value for `image`, must not be `None`")  # noqa: E501
        if image is not None and len(image) < 1:
            raise ValueError("Invalid value for `image`, length must be greater than or equal to `1`")  # noqa: E501

        self._image = image

    @property
    def image_type(self):
        """Gets the image_type of this InlineResponse2001.  # noqa: E501


        :return: The image_type of this InlineResponse2001.  # noqa: E501
        :rtype: str
        """
        return self._image_type

    @image_type.setter
    def image_type(self, image_type):
        """Sets the image_type of this InlineResponse2001.


        :param image_type: The image_type of this InlineResponse2001.  # noqa: E501
        :type: str
        """
        if image_type is None:
            raise ValueError("Invalid value for `image_type`, must not be `None`")  # noqa: E501
        if image_type is not None and len(image_type) < 1:
            raise ValueError("Invalid value for `image_type`, length must be greater than or equal to `1`")  # noqa: E501

        self._image_type = image_type

    @property
    def likes(self):
        """Gets the likes of this InlineResponse2001.  # noqa: E501


        :return: The likes of this InlineResponse2001.  # noqa: E501
        :rtype: int
        """
        return self._likes

    @likes.setter
    def likes(self, likes):
        """Sets the likes of this InlineResponse2001.


        :param likes: The likes of this InlineResponse2001.  # noqa: E501
        :type: int
        """
        if likes is None:
            raise ValueError("Invalid value for `likes`, must not be `None`")  # noqa: E501

        self._likes = likes

    @property
    def missed_ingredient_count(self):
        """Gets the missed_ingredient_count of this InlineResponse2001.  # noqa: E501


        :return: The missed_ingredient_count of this InlineResponse2001.  # noqa: E501
        :rtype: int
        """
        return self._missed_ingredient_count

    @missed_ingredient_count.setter
    def missed_ingredient_count(self, missed_ingredient_count):
        """Sets the missed_ingredient_count of this InlineResponse2001.


        :param missed_ingredient_count: The missed_ingredient_count of this InlineResponse2001.  # noqa: E501
        :type: int
        """
        if missed_ingredient_count is None:
            raise ValueError("Invalid value for `missed_ingredient_count`, must not be `None`")  # noqa: E501

        self._missed_ingredient_count = missed_ingredient_count

    @property
    def missed_ingredients(self):
        """Gets the missed_ingredients of this InlineResponse2001.  # noqa: E501


        :return: The missed_ingredients of this InlineResponse2001.  # noqa: E501
        :rtype: list[RecipesFindByIngredientsMissedIngredients]
        """
        return self._missed_ingredients

    @missed_ingredients.setter
    def missed_ingredients(self, missed_ingredients):
        """Sets the missed_ingredients of this InlineResponse2001.


        :param missed_ingredients: The missed_ingredients of this InlineResponse2001.  # noqa: E501
        :type: list[RecipesFindByIngredientsMissedIngredients]
        """
        if missed_ingredients is None:
            raise ValueError("Invalid value for `missed_ingredients`, must not be `None`")  # noqa: E501

        self._missed_ingredients = missed_ingredients

    @property
    def title(self):
        """Gets the title of this InlineResponse2001.  # noqa: E501


        :return: The title of this InlineResponse2001.  # noqa: E501
        :rtype: str
        """
        return self._title

    @title.setter
    def title(self, title):
        """Sets the title of this InlineResponse2001.


        :param title: The title of this InlineResponse2001.  # noqa: E501
        :type: str
        """
        if title is None:
            raise ValueError("Invalid value for `title`, must not be `None`")  # noqa: E501
        if title is not None and len(title) < 1:
            raise ValueError("Invalid value for `title`, length must be greater than or equal to `1`")  # noqa: E501

        self._title = title

    @property
    def unused_ingredients(self):
        """Gets the unused_ingredients of this InlineResponse2001.  # noqa: E501


        :return: The unused_ingredients of this InlineResponse2001.  # noqa: E501
        :rtype: list[object]
        """
        return self._unused_ingredients

    @unused_ingredients.setter
    def unused_ingredients(self, unused_ingredients):
        """Sets the unused_ingredients of this InlineResponse2001.


        :param unused_ingredients: The unused_ingredients of this InlineResponse2001.  # noqa: E501
        :type: list[object]
        """
        if unused_ingredients is None:
            raise ValueError("Invalid value for `unused_ingredients`, must not be `None`")  # noqa: E501

        self._unused_ingredients = unused_ingredients

    @property
    def used_ingredient_count(self):
        """Gets the used_ingredient_count of this InlineResponse2001.  # noqa: E501


        :return: The used_ingredient_count of this InlineResponse2001.  # noqa: E501
        :rtype: float
        """
        return self._used_ingredient_count

    @used_ingredient_count.setter
    def used_ingredient_count(self, used_ingredient_count):
        """Sets the used_ingredient_count of this InlineResponse2001.


        :param used_ingredient_count: The used_ingredient_count of this InlineResponse2001.  # noqa: E501
        :type: float
        """
        if used_ingredient_count is None:
            raise ValueError("Invalid value for `used_ingredient_count`, must not be `None`")  # noqa: E501

        self._used_ingredient_count = used_ingredient_count

    @property
    def used_ingredients(self):
        """Gets the used_ingredients of this InlineResponse2001.  # noqa: E501


        :return: The used_ingredients of this InlineResponse2001.  # noqa: E501
        :rtype: list[RecipesFindByIngredientsMissedIngredients]
        """
        return self._used_ingredients

    @used_ingredients.setter
    def used_ingredients(self, used_ingredients):
        """Sets the used_ingredients of this InlineResponse2001.


        :param used_ingredients: The used_ingredients of this InlineResponse2001.  # noqa: E501
        :type: list[RecipesFindByIngredientsMissedIngredients]
        """
        if used_ingredients is None:
            raise ValueError("Invalid value for `used_ingredients`, must not be `None`")  # noqa: E501

        self._used_ingredients = used_ingredients

    @property
    def (self):
        """Gets the  of this InlineResponse2001.  # noqa: E501


        :return: The  of this InlineResponse2001.  # noqa: E501
        :rtype: str
        """
        return self._

    @.setter
    def (self, ):
        """Sets the  of this InlineResponse2001.


        :param : The  of this InlineResponse2001.  # noqa: E501
        :type: str
        """

        self._ = 

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
        if not isinstance(other, InlineResponse2001):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
