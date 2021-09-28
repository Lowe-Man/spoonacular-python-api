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

#include "OAIWineApi.h"
#include "OAIHelpers.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace OpenAPI {

OAIWineApi::OAIWineApi() {

}

OAIWineApi::~OAIWineApi() {

}

OAIWineApi::OAIWineApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
OAIWineApi::getDishPairingForWine(const QString& wine) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/wine/dishes");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("wine"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(wine)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIWineApi::getDishPairingForWineCallback);

    worker->execute(&input);
}

void
OAIWineApi::getDishPairingForWineCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_43 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getDishPairingForWineSignal(output);
        emit getDishPairingForWineSignalFull(worker, output);
    } else {
        emit getDishPairingForWineSignalE(output, error_type, error_str);
        emit getDishPairingForWineSignalEFull(worker, error_type, error_str);
    }
}

void
OAIWineApi::getWineDescription(const QString& wine) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/wine/description");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("wine"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(wine)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIWineApi::getWineDescriptionCallback);

    worker->execute(&input);
}

void
OAIWineApi::getWineDescriptionCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_45 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getWineDescriptionSignal(output);
        emit getWineDescriptionSignalFull(worker, output);
    } else {
        emit getWineDescriptionSignalE(output, error_type, error_str);
        emit getWineDescriptionSignalEFull(worker, error_type, error_str);
    }
}

void
OAIWineApi::getWinePairing(const QString& food, const OAINumber& max_price) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/wine/pairing");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("food"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(food)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("maxPrice"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(max_price)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIWineApi::getWinePairingCallback);

    worker->execute(&input);
}

void
OAIWineApi::getWinePairingCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_44 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getWinePairingSignal(output);
        emit getWinePairingSignalFull(worker, output);
    } else {
        emit getWinePairingSignalE(output, error_type, error_str);
        emit getWinePairingSignalEFull(worker, error_type, error_str);
    }
}

void
OAIWineApi::getWineRecommendation(const QString& wine, const OAINumber& max_price, const OAINumber& min_rating, const OAINumber& number) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/wine/recommendation");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("wine"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(wine)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("maxPrice"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(max_price)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("minRating"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(min_rating)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("number"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(number)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIWineApi::getWineRecommendationCallback);

    worker->execute(&input);
}

void
OAIWineApi::getWineRecommendationCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_46 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getWineRecommendationSignal(output);
        emit getWineRecommendationSignalFull(worker, output);
    } else {
        emit getWineRecommendationSignalE(output, error_type, error_str);
        emit getWineRecommendationSignalEFull(worker, error_type, error_str);
    }
}


}
