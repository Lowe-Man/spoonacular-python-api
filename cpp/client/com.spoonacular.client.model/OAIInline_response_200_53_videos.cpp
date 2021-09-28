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


#include "OAIInline_response_200_53_videos.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIInline_response_200_53_videos::OAIInline_response_200_53_videos(QString json) {
    this->init();
    this->fromJson(json);
}

OAIInline_response_200_53_videos::OAIInline_response_200_53_videos() {
    this->init();
}

OAIInline_response_200_53_videos::~OAIInline_response_200_53_videos() {

}

void
OAIInline_response_200_53_videos::init() {
    
    m_title_isSet = false;
    m_title_isValid = false;
    
    m_length_isSet = false;
    m_length_isValid = false;
    
    m_rating_isSet = false;
    m_rating_isValid = false;
    
    m_short_title_isSet = false;
    m_short_title_isValid = false;
    
    m_thumbnail_isSet = false;
    m_thumbnail_isValid = false;
    
    m_views_isSet = false;
    m_views_isValid = false;
    
    m_you_tube_id_isSet = false;
    m_you_tube_id_isValid = false;
    }

void
OAIInline_response_200_53_videos::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIInline_response_200_53_videos::fromJsonObject(QJsonObject json) {
    
    m_title_isValid = ::OpenAPI::fromJsonValue(title, json[QString("title")]);
    
    
    m_length_isValid = ::OpenAPI::fromJsonValue(length, json[QString("length")]);
    
    
    m_rating_isValid = ::OpenAPI::fromJsonValue(rating, json[QString("rating")]);
    
    
    m_short_title_isValid = ::OpenAPI::fromJsonValue(short_title, json[QString("shortTitle")]);
    
    
    m_thumbnail_isValid = ::OpenAPI::fromJsonValue(thumbnail, json[QString("thumbnail")]);
    
    
    m_views_isValid = ::OpenAPI::fromJsonValue(views, json[QString("views")]);
    
    
    m_you_tube_id_isValid = ::OpenAPI::fromJsonValue(you_tube_id, json[QString("youTubeId")]);
    
    
}

QString
OAIInline_response_200_53_videos::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIInline_response_200_53_videos::asJsonObject() const {
    QJsonObject obj;
	if(m_title_isSet){
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(title));
    }
	if(m_length_isSet){
        obj.insert(QString("length"), ::OpenAPI::toJsonValue(length));
    }
	if(rating.isSet()){
        obj.insert(QString("rating"), ::OpenAPI::toJsonValue(rating));
    }
	if(m_short_title_isSet){
        obj.insert(QString("shortTitle"), ::OpenAPI::toJsonValue(short_title));
    }
	if(m_thumbnail_isSet){
        obj.insert(QString("thumbnail"), ::OpenAPI::toJsonValue(thumbnail));
    }
	if(m_views_isSet){
        obj.insert(QString("views"), ::OpenAPI::toJsonValue(views));
    }
	if(m_you_tube_id_isSet){
        obj.insert(QString("youTubeId"), ::OpenAPI::toJsonValue(you_tube_id));
    }
    return obj;
}


QString
OAIInline_response_200_53_videos::getTitle() const {
    return title;
}
void
OAIInline_response_200_53_videos::setTitle(const QString &title) {
    this->title = title;
    this->m_title_isSet = true;
}


qint32
OAIInline_response_200_53_videos::getLength() const {
    return length;
}
void
OAIInline_response_200_53_videos::setLength(const qint32 &length) {
    this->length = length;
    this->m_length_isSet = true;
}


OAINumber
OAIInline_response_200_53_videos::getRating() const {
    return rating;
}
void
OAIInline_response_200_53_videos::setRating(const OAINumber &rating) {
    this->rating = rating;
    this->m_rating_isSet = true;
}


QString
OAIInline_response_200_53_videos::getShortTitle() const {
    return short_title;
}
void
OAIInline_response_200_53_videos::setShortTitle(const QString &short_title) {
    this->short_title = short_title;
    this->m_short_title_isSet = true;
}


QString
OAIInline_response_200_53_videos::getThumbnail() const {
    return thumbnail;
}
void
OAIInline_response_200_53_videos::setThumbnail(const QString &thumbnail) {
    this->thumbnail = thumbnail;
    this->m_thumbnail_isSet = true;
}


qint32
OAIInline_response_200_53_videos::getViews() const {
    return views;
}
void
OAIInline_response_200_53_videos::setViews(const qint32 &views) {
    this->views = views;
    this->m_views_isSet = true;
}


QString
OAIInline_response_200_53_videos::getYouTubeId() const {
    return you_tube_id;
}
void
OAIInline_response_200_53_videos::setYouTubeId(const QString &you_tube_id) {
    this->you_tube_id = you_tube_id;
    this->m_you_tube_id_isSet = true;
}

bool
OAIInline_response_200_53_videos::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m_title_isSet){ isObjectUpdated = true; break;}
    
        if(m_length_isSet){ isObjectUpdated = true; break;}
    
        if(rating.isSet()){ isObjectUpdated = true; break;}
    
        if(m_short_title_isSet){ isObjectUpdated = true; break;}
    
        if(m_thumbnail_isSet){ isObjectUpdated = true; break;}
    
        if(m_views_isSet){ isObjectUpdated = true; break;}
    
        if(m_you_tube_id_isSet){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

bool
OAIInline_response_200_53_videos::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_title_isValid && m_length_isValid && m_rating_isValid && m_short_title_isValid && m_thumbnail_isValid && m_views_isValid && m_you_tube_id_isValid && true;
}

}

