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
 */

/*
 * OAIInline_response_200_28.h
 *
 * 
 */

#ifndef OAIInline_response_200_28_H
#define OAIInline_response_200_28_H

#include <QJsonObject>


#include "com.spoonacular.client.model\OAIInline_response_200_28_ingredients.h"
#include "com.spoonacular.client.model\OAIInline_response_200_28_nutrition.h"
#include "com.spoonacular.client.model\OAIInline_response_200_28_servings.h"
#include "com.spoonacular.client.model\OAINumber.h"
#include <QList>
#include <QString>

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIInline_response_200_28: public OAIObject {
public:
    OAIInline_response_200_28();
    OAIInline_response_200_28(QString json);
    ~OAIInline_response_200_28() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    qint32 getId() const;
    void setId(const qint32 &id);

    
    QString getTitle() const;
    void setTitle(const QString &title);

    
    QList<QString> getBadges() const;
    void setBadges(const QList<QString> &badges);

    
    QList<QString> getImportantBadges() const;
    void setImportantBadges(const QList<QString> &important_badges);

    
    QList<QString> getBreadcrumbs() const;
    void setBreadcrumbs(const QList<QString> &breadcrumbs);

    
    QString getGeneratedText() const;
    void setGeneratedText(const QString &generated_text);

    
    QString getImageType() const;
    void setImageType(const QString &image_type);

    
    qint32 getIngredientCount() const;
    void setIngredientCount(const qint32 &ingredient_count);

    
    QString getIngredientList() const;
    void setIngredientList(const QString &ingredient_list);

    
    QList<OAIInline_response_200_28_ingredients> getIngredients() const;
    void setIngredients(const QList<OAIInline_response_200_28_ingredients> &ingredients);

    
    OAINumber getLikes() const;
    void setLikes(const OAINumber &likes);

    
    OAIInline_response_200_28_nutrition getNutrition() const;
    void setNutrition(const OAIInline_response_200_28_nutrition &nutrition);

    
    OAINumber getPrice() const;
    void setPrice(const OAINumber &price);

    
    OAIInline_response_200_28_servings getServings() const;
    void setServings(const OAIInline_response_200_28_servings &servings);

    
    OAINumber getSpoonacularScore() const;
    void setSpoonacularScore(const OAINumber &spoonacular_score);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    qint32 id;
    bool m_id_isSet;
    bool m_id_isValid;
    
    QString title;
    bool m_title_isSet;
    bool m_title_isValid;
    
    QList<QString> badges;
    bool m_badges_isSet;
    bool m_badges_isValid;
    
    QList<QString> important_badges;
    bool m_important_badges_isSet;
    bool m_important_badges_isValid;
    
    QList<QString> breadcrumbs;
    bool m_breadcrumbs_isSet;
    bool m_breadcrumbs_isValid;
    
    QString generated_text;
    bool m_generated_text_isSet;
    bool m_generated_text_isValid;
    
    QString image_type;
    bool m_image_type_isSet;
    bool m_image_type_isValid;
    
    qint32 ingredient_count;
    bool m_ingredient_count_isSet;
    bool m_ingredient_count_isValid;
    
    QString ingredient_list;
    bool m_ingredient_list_isSet;
    bool m_ingredient_list_isValid;
    
    QList<OAIInline_response_200_28_ingredients> ingredients;
    bool m_ingredients_isSet;
    bool m_ingredients_isValid;
    
    OAINumber likes;
    bool m_likes_isSet;
    bool m_likes_isValid;
    
    OAIInline_response_200_28_nutrition nutrition;
    bool m_nutrition_isSet;
    bool m_nutrition_isValid;
    
    OAINumber price;
    bool m_price_isSet;
    bool m_price_isValid;
    
    OAIInline_response_200_28_servings servings;
    bool m_servings_isSet;
    bool m_servings_isValid;
    
    OAINumber spoonacular_score;
    bool m_spoonacular_score_isSet;
    bool m_spoonacular_score_isValid;
    
    };

}

#endif // OAIInline_response_200_28_H
