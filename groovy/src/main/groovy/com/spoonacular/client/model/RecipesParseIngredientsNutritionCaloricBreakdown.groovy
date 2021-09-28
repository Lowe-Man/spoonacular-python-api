package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class RecipesParseIngredientsNutritionCaloricBreakdown {
    
    BigDecimal percentProtein
    
    BigDecimal percentFat
    
    BigDecimal percentCarbs
}
