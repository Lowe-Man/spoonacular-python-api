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


#include "OAIInline_response_200_40_value.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIInline_response_200_40_value::OAIInline_response_200_40_value(QString json) {
    this->init();
    this->fromJson(json);
}

OAIInline_response_200_40_value::OAIInline_response_200_40_value() {
    this->init();
}

OAIInline_response_200_40_value::~OAIInline_response_200_40_value() {

}

void
OAIInline_response_200_40_value::init() {
    
    m_id_isSet = false;
    m_id_isValid = false;
    
    m_title_isSet = false;
    m_title_isValid = false;
    
    m_image_type_isSet = false;
    m_image_type_isValid = false;
    }

void
OAIInline_response_200_40_value::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIInline_response_200_40_value::fromJsonObject(QJsonObject json) {
    
    m_id_isValid = ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    
    
    m_title_isValid = ::OpenAPI::fromJsonValue(title, json[QString("title")]);
    
    
    m_image_type_isValid = ::OpenAPI::fromJsonValue(image_type, json[QString("imageType")]);
    
    
}

QString
OAIInline_response_200_40_value::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIInline_response_200_40_value::asJsonObject() const {
    QJsonObject obj;
	if(id.isSet()){
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
	if(m_title_isSet){
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(title));
    }
	if(m_image_type_isSet){
        obj.insert(QString("imageType"), ::OpenAPI::toJsonValue(image_type));
    }
    return obj;
}


OAINumber
OAIInline_response_200_40_value::getId() const {
    return id;
}
void
OAIInline_response_200_40_value::setId(const OAINumber &id) {
    this->id = id;
    this->m_id_isSet = true;
}


QString
OAIInline_response_200_40_value::getTitle() const {
    return title;
}
void
OAIInline_response_200_40_value::setTitle(const QString &title) {
    this->title = title;
    this->m_title_isSet = true;
}


QString
OAIInline_response_200_40_value::getImageType() const {
    return image_type;
}
void
OAIInline_response_200_40_value::setImageType(const QString &image_type) {
    this->image_type = image_type;
    this->m_image_type_isSet = true;
}

bool
OAIInline_response_200_40_value::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(id.isSet()){ isObjectUpdated = true; break;}
    
        if(m_title_isSet){ isObjectUpdated = true; break;}
    
        if(m_image_type_isSet){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

bool
OAIInline_response_200_40_value::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_id_isValid && m_title_isValid && m_image_type_isValid && true;
}

}

