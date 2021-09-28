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

#ifndef OAI_OAIProductsApi_H
#define OAI_OAIProductsApi_H

#include "OAIHttpRequest.h"

#include "com.spoonacular.client.model\OAIInlineObject.h"
#include "com.spoonacular.client.model\OAIInline_object_1.h"
#include "com.spoonacular.client.model\OAIInline_response_200_27.h"
#include "com.spoonacular.client.model\OAIInline_response_200_28.h"
#include "com.spoonacular.client.model\OAIInline_response_200_30.h"
#include "com.spoonacular.client.model\OAIInline_response_200_31.h"
#include "com.spoonacular.client.model\OAIInline_response_200_32.h"
#include "com.spoonacular.client.model\OAIInline_response_200_33.h"
#include "com.spoonacular.client.model\OAINumber.h"
#include "com.spoonacular.client.model\OAIObject.h"
#include <QList>
#include <QString>

#include <QObject>

namespace OpenAPI {

class OAIProductsApi: public QObject {
    Q_OBJECT

public:
    OAIProductsApi();
    OAIProductsApi(QString host, QString basePath);
    ~OAIProductsApi();

    QString host;
    QString basePath;
    QMap<QString, QString> defaultHeaders;

    void autocompleteProductSearch(const QString& query, const qint32& number);
    void classifyGroceryProduct(const OAIInline_object_1& oai_inline_object_1, const QString& locale);
    void classifyGroceryProductBulk(const QList<OAIInlineObject>& oai_inline_object, const QString& locale);
    void getComparableProducts(const OAINumber& upc);
    void getProductInformation(const qint32& id);
    void productNutritionByIDImage(const OAINumber& id);
    void productNutritionLabelImage(const OAINumber& id, const bool& show_optional_nutrients, const bool& show_zero_values, const bool& show_ingredients);
    void productNutritionLabelWidget(const OAINumber& id, const bool& default_css, const bool& show_optional_nutrients, const bool& show_zero_values, const bool& show_ingredients);
    void searchGroceryProducts(const QString& query, const OAINumber& min_calories, const OAINumber& max_calories, const OAINumber& min_carbs, const OAINumber& max_carbs, const OAINumber& min_protein, const OAINumber& max_protein, const OAINumber& min_fat, const OAINumber& max_fat, const qint32& offset, const qint32& number);
    void searchGroceryProductsByUPC(const OAINumber& upc);
    void visualizeProductNutritionByID(const qint32& id, const bool& default_css, const QString& accept);
    
private:
    void autocompleteProductSearchCallback (OAIHttpRequestWorker * worker);
    void classifyGroceryProductCallback (OAIHttpRequestWorker * worker);
    void classifyGroceryProductBulkCallback (OAIHttpRequestWorker * worker);
    void getComparableProductsCallback (OAIHttpRequestWorker * worker);
    void getProductInformationCallback (OAIHttpRequestWorker * worker);
    void productNutritionByIDImageCallback (OAIHttpRequestWorker * worker);
    void productNutritionLabelImageCallback (OAIHttpRequestWorker * worker);
    void productNutritionLabelWidgetCallback (OAIHttpRequestWorker * worker);
    void searchGroceryProductsCallback (OAIHttpRequestWorker * worker);
    void searchGroceryProductsByUPCCallback (OAIHttpRequestWorker * worker);
    void visualizeProductNutritionByIDCallback (OAIHttpRequestWorker * worker);
    
signals:
    void autocompleteProductSearchSignal(OAIInline_response_200_32 summary);
    void classifyGroceryProductSignal(OAIInline_response_200_33 summary);
    void classifyGroceryProductBulkSignal(QList<OAIInline_response_200_33> summary);
    void getComparableProductsSignal(OAIInline_response_200_31 summary);
    void getProductInformationSignal(OAIInline_response_200_30 summary);
    void productNutritionByIDImageSignal(OAIObject summary);
    void productNutritionLabelImageSignal(OAIObject summary);
    void productNutritionLabelWidgetSignal(QString summary);
    void searchGroceryProductsSignal(OAIInline_response_200_27 summary);
    void searchGroceryProductsByUPCSignal(OAIInline_response_200_28 summary);
    void visualizeProductNutritionByIDSignal(QString summary);
    
    void autocompleteProductSearchSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_32 summary);
    void classifyGroceryProductSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_33 summary);
    void classifyGroceryProductBulkSignalFull(OAIHttpRequestWorker* worker, QList<OAIInline_response_200_33> summary);
    void getComparableProductsSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_31 summary);
    void getProductInformationSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_30 summary);
    void productNutritionByIDImageSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    void productNutritionLabelImageSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    void productNutritionLabelWidgetSignalFull(OAIHttpRequestWorker* worker, QString summary);
    void searchGroceryProductsSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_27 summary);
    void searchGroceryProductsByUPCSignalFull(OAIHttpRequestWorker* worker, OAIInline_response_200_28 summary);
    void visualizeProductNutritionByIDSignalFull(OAIHttpRequestWorker* worker, QString summary);
    
    void autocompleteProductSearchSignalE(OAIInline_response_200_32 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void classifyGroceryProductSignalE(OAIInline_response_200_33 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void classifyGroceryProductBulkSignalE(QList<OAIInline_response_200_33> summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void getComparableProductsSignalE(OAIInline_response_200_31 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void getProductInformationSignalE(OAIInline_response_200_30 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void productNutritionByIDImageSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void productNutritionLabelImageSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void productNutritionLabelWidgetSignalE(QString summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void searchGroceryProductsSignalE(OAIInline_response_200_27 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void searchGroceryProductsByUPCSignalE(OAIInline_response_200_28 summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void visualizeProductNutritionByIDSignalE(QString summary, QNetworkReply::NetworkError error_type, QString& error_str);
    
    void autocompleteProductSearchSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void classifyGroceryProductSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void classifyGroceryProductBulkSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void getComparableProductsSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void getProductInformationSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void productNutritionByIDImageSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void productNutritionLabelImageSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void productNutritionLabelWidgetSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void searchGroceryProductsSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void searchGroceryProductsByUPCSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void visualizeProductNutritionByIDSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    
};

}
#endif
