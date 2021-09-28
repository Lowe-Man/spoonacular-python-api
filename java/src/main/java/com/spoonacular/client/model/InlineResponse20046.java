/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.spoonacular.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.spoonacular.client.model.InlineResponse20046RecommendedWines;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse20046
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-09-28T20:40:32.759+02:00[Europe/Berlin]")
public class InlineResponse20046 {
  public static final String SERIALIZED_NAME_RECOMMENDED_WINES = "recommendedWines";
  @SerializedName(SERIALIZED_NAME_RECOMMENDED_WINES)
  private List<InlineResponse20046RecommendedWines> recommendedWines = new ArrayList<>();

  public static final String SERIALIZED_NAME_TOTAL_FOUND = "totalFound";
  @SerializedName(SERIALIZED_NAME_TOTAL_FOUND)
  private Integer totalFound;

  public InlineResponse20046 recommendedWines(List<InlineResponse20046RecommendedWines> recommendedWines) {
    this.recommendedWines = recommendedWines;
    return this;
  }

  public InlineResponse20046 addRecommendedWinesItem(InlineResponse20046RecommendedWines recommendedWinesItem) {
    this.recommendedWines.add(recommendedWinesItem);
    return this;
  }

   /**
   * Get recommendedWines
   * @return recommendedWines
  **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20046RecommendedWines> getRecommendedWines() {
    return recommendedWines;
  }

  public void setRecommendedWines(List<InlineResponse20046RecommendedWines> recommendedWines) {
    this.recommendedWines = recommendedWines;
  }

  public InlineResponse20046 totalFound(Integer totalFound) {
    this.totalFound = totalFound;
    return this;
  }

   /**
   * Get totalFound
   * @return totalFound
  **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTotalFound() {
    return totalFound;
  }

  public void setTotalFound(Integer totalFound) {
    this.totalFound = totalFound;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20046 inlineResponse20046 = (InlineResponse20046) o;
    return Objects.equals(this.recommendedWines, inlineResponse20046.recommendedWines) &&
        Objects.equals(this.totalFound, inlineResponse20046.totalFound);
  }

  @Override
  public int hashCode() {
    return Objects.hash(recommendedWines, totalFound);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20046 {\n");
    sb.append("    recommendedWines: ").append(toIndentedString(recommendedWines)).append("\n");
    sb.append("    totalFound: ").append(toIndentedString(totalFound)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

