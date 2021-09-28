# coding: utf-8

"""
    spoonacular API

    The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.  # noqa: E501

    The version of the OpenAPI document: 1.0
    Contact: mail@spoonacular.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest

import spoonacular
from com.spoonacular.misc_api import MiscApi  # noqa: E501
from spoonacular.rest import ApiException


class TestMiscApi(unittest.TestCase):
    """MiscApi unit test stubs"""

    def setUp(self):
        self.api = com.spoonacular.misc_api.MiscApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_detect_food_in_text(self):
        """Test case for detect_food_in_text

        Detect Food in Text  # noqa: E501
        """
        pass

    def test_get_a_random_food_joke(self):
        """Test case for get_a_random_food_joke

        Random Food Joke  # noqa: E501
        """
        pass

    def test_get_conversation_suggests(self):
        """Test case for get_conversation_suggests

        Conversation Suggests  # noqa: E501
        """
        pass

    def test_get_random_food_trivia(self):
        """Test case for get_random_food_trivia

        Random Food Trivia  # noqa: E501
        """
        pass

    def test_image_analysis_by_url(self):
        """Test case for image_analysis_by_url

        Image Analysis by URL  # noqa: E501
        """
        pass

    def test_image_classification_by_url(self):
        """Test case for image_classification_by_url

        Image Classification by URL  # noqa: E501
        """
        pass

    def test_search_all_food(self):
        """Test case for search_all_food

        Search All Food  # noqa: E501
        """
        pass

    def test_search_custom_foods(self):
        """Test case for search_custom_foods

        Search Custom Foods  # noqa: E501
        """
        pass

    def test_search_food_videos(self):
        """Test case for search_food_videos

        Search Food Videos  # noqa: E501
        """
        pass

    def test_search_site_content(self):
        """Test case for search_site_content

        Search Site Content  # noqa: E501
        """
        pass

    def test_talk_to_chatbot(self):
        """Test case for talk_to_chatbot

        Talk to Chatbot  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
