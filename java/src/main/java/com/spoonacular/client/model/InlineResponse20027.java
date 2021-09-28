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
import com.spoonacular.client.model.InlineResponse2007;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse20027
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-09-28T20:40:32.759+02:00[Europe/Berlin]")
public class InlineResponse20027 {
  public static final String SERIALIZED_NAME_PRODUCTS = "products";
  @SerializedName(SERIALIZED_NAME_PRODUCTS)
  private List<InlineResponse2007> products = new ArrayList<>();

  public static final String SERIALIZED_NAME_TOTAL_PRODUCTS = "totalProducts";
  @SerializedName(SERIALIZED_NAME_TOTAL_PRODUCTS)
  private Integer totalProducts;

  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_OFFSET = "offset";
  @SerializedName(SERIALIZED_NAME_OFFSET)
  private Integer offset;

  public static final String SERIALIZED_NAME_NUMBER = "number";
  @SerializedName(SERIALIZED_NAME_NUMBER)
  private Integer number;

  public InlineResponse20027 products(List<InlineResponse2007> products) {
    this.products = products;
    return this;
  }

  public InlineResponse20027 addProductsItem(InlineResponse2007 productsItem) {
    this.products.add(productsItem);
    return this;
  }

   /**
   * Get products
   * @return products
  **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse2007> getProducts() {
    return products;
  }

  public void setProducts(List<InlineResponse2007> products) {
    this.products = products;
  }

  public InlineResponse20027 totalProducts(Integer totalProducts) {
    this.totalProducts = totalProducts;
    return this;
  }

   /**
   * Get totalProducts
   * @return totalProducts
  **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTotalProducts() {
    return totalProducts;
  }

  public void setTotalProducts(Integer totalProducts) {
    this.totalProducts = totalProducts;
  }

  public InlineResponse20027 type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  @ApiModelProperty(required = true, value = "")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public InlineResponse20027 offset(Integer offset) {
    this.offset = offset;
    return this;
  }

   /**
   * Get offset
   * @return offset
  **/
  @ApiModelProperty(required = true, value = "")
  public Integer getOffset() {
    return offset;
  }

  public void setOffset(Integer offset) {
    this.offset = offset;
  }

  public InlineResponse20027 number(Integer number) {
    this.number = number;
    return this;
  }

   /**
   * Get number
   * @return number
  **/
  @ApiModelProperty(required = true, value = "")
  public Integer getNumber() {
    return number;
  }

  public void setNumber(Integer number) {
    this.number = number;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20027 inlineResponse20027 = (InlineResponse20027) o;
    return Objects.equals(this.products, inlineResponse20027.products) &&
        Objects.equals(this.totalProducts, inlineResponse20027.totalProducts) &&
        Objects.equals(this.type, inlineResponse20027.type) &&
        Objects.equals(this.offset, inlineResponse20027.offset) &&
        Objects.equals(this.number, inlineResponse20027.number);
  }

  @Override
  public int hashCode() {
    return Objects.hash(products, totalProducts, type, offset, number);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20027 {\n");
    sb.append("    products: ").append(toIndentedString(products)).append("\n");
    sb.append("    totalProducts: ").append(toIndentedString(totalProducts)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    offset: ").append(toIndentedString(offset)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
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

