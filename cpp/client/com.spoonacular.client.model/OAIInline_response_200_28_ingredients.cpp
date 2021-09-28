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


#include "OAIInline_response_200_28_ingredients.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIInline_response_200_28_ingredients::OAIInline_response_200_28_ingredients(QString json) {
    this->init();
    this->fromJson(json);
}

OAIInline_response_200_28_ingredients::OAIInline_response_200_28_ingredients() {
    this->init();
}

OAIInline_response_200_28_ingredients::~OAIInline_response_200_28_ingredients() {

}

void
OAIInline_response_200_28_ingredients::init() {
    
    m_description_isSet = false;
    m_description_isValid = false;
    
    m_name_isSet = false;
    m_name_isValid = false;
    
    m_safety_level_isSet = false;
    m_safety_level_isValid = false;
    }

void
OAIInline_response_200_28_ingredients::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIInline_response_200_28_ingredients::fromJsonObject(QJsonObject json) {
    
    m_description_isValid = ::OpenAPI::fromJsonValue(description, json[QString("description")]);
    
    
    m_name_isValid = ::OpenAPI::fromJsonValue(name, json[QString("name")]);
    
    
    m_safety_level_isValid = ::OpenAPI::fromJsonValue(safety_level, json[QString("safety_level")]);
    
    
}

QString
OAIInline_response_200_28_ingredients::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIInline_response_200_28_ingredients::asJsonObject() const {
    QJsonObject obj;
	if(description.isSet()){
        obj.insert(QString("description"), ::OpenAPI::toJsonValue(description));
    }
	if(m_name_isSet){
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(name));
    }
	if(safety_level.isSet()){
        obj.insert(QString("safety_level"), ::OpenAPI::toJsonValue(safety_level));
    }
    return obj;
}


OAIObject
OAIInline_response_200_28_ingredients::getDescription() const {
    return description;
}
void
OAIInline_response_200_28_ingredients::setDescription(const OAIObject &description) {
    this->description = description;
    this->m_description_isSet = true;
}


QString
OAIInline_response_200_28_ingredients::getName() const {
    return name;
}
void
OAIInline_response_200_28_ingredients::setName(const QString &name) {
    this->name = name;
    this->m_name_isSet = true;
}


OAIObject
OAIInline_response_200_28_ingredients::getSafetyLevel() const {
    return safety_level;
}
void
OAIInline_response_200_28_ingredients::setSafetyLevel(const OAIObject &safety_level) {
    this->safety_level = safety_level;
    this->m_safety_level_isSet = true;
}

bool
OAIInline_response_200_28_ingredients::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(description.isSet()){ isObjectUpdated = true; break;}
    
        if(m_name_isSet){ isObjectUpdated = true; break;}
    
        if(safety_level.isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

bool
OAIInline_response_200_28_ingredients::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_name_isValid && true;
}

}

