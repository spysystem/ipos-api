# OpenAPIClient-php
OpenAPI description for the iPOS integration for FileMaker 17 API

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.PhpClientCodegen
For more information, please visit [http://spysystem.dk](http://spysystem.dk)

## Requirements

PHP 5.5 and later

## Installation & Usage
### Composer

To install the bindings via [Composer](http://getcomposer.org/), add the following to `composer.json`:

```
{
  "repositories": [
    {
      "type": "git",
      "url": "https://github.com/spysystem/ipos-api.git"
    }
  ],
  "require": {
    "spysystem/ipos-api": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
    require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Tests

To run the unit tests:

```
composer install
./vendor/bin/phpunit
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: BasicAuthentication
$config = iPosExchanger\Configuration::getDefaultConfiguration()
    ->setUsername('YOUR_USERNAME')
    ->setPassword('YOUR_PASSWORD');

$apiInstance = new iPosExchanger\Api\AuthenticationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$empty_object = new \iPosExchanger\Model\EmptyObject(); // \iPosExchanger\Model\EmptyObject | Connecting data

try {
    $result = $apiInstance->getDataToken($str_database, $empty_object);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AuthenticationApi->getDataToken: ', $e->getMessage(), PHP_EOL;
}

?>
```

## Documentation for API Endpoints

All URIs are relative to *https://server02.ipos.dk/fmi/data/v1/databases*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthenticationApi* | [**getDataToken**](docs/Api/AuthenticationApi.md#getdatatoken) | **POST** /{strDatabase}/sessions | gets an authentication token (valid for 15 minutes)
*DeliveriesApi* | [**createDelivery**](docs/Api/DeliveriesApi.md#createdelivery) | **POST** /{strDatabase}/layouts/api_SPY_Varemodtagelse/records | Creates a new Delivery
*DeliveryLinesApi* | [**createDeliveryLine**](docs/Api/DeliveryLinesApi.md#createdeliveryline) | **POST** /{strDatabase}/layouts/api_SPY_Varemodtagelse_linie/records | Creates a new Delivery Line
*ProductTypesApi* | [**createProductTypes**](docs/Api/ProductTypesApi.md#createproducttypes) | **POST** /{strDatabase}/layouts/api_SPY_varegrupper/records | Creates a new product type
*ProductTypesApi* | [**findProductTypes**](docs/Api/ProductTypesApi.md#findproducttypes) | **POST** /{strDatabase}/layouts/api_SPY_varegrupper/_find | finds a product type based on its Id
*ProductTypesApi* | [**getProductTypes**](docs/Api/ProductTypesApi.md#getproducttypes) | **GET** /{strDatabase}/layouts/api_SPY_varegrupper/records | retrieves all product types
*ProductsApi* | [**createProduct**](docs/Api/ProductsApi.md#createproduct) | **POST** /{strDatabase}/layouts/api_SPY_varer/records | Creates a new product
*ProductsApi* | [**findProducts**](docs/Api/ProductsApi.md#findproducts) | **POST** /{strDatabase}/layouts/api_SPY_varer/_find | finds a product based on its EAN code
*ProductsApi* | [**getProduct**](docs/Api/ProductsApi.md#getproduct) | **GET** /{strDatabase}/layouts/api_SPY_varer/records{iRecordID} | retrieves a product
*ProductsApi* | [**getProducts**](docs/Api/ProductsApi.md#getproducts) | **GET** /{strDatabase}/layouts/api_SPY_varer/records | retrieves products
*ProductsApi* | [**updateProduct**](docs/Api/ProductsApi.md#updateproduct) | **PATCH** /{strDatabase}/layouts/api_SPY_varer/records{iRecordID} | Updates a product
*SalesReportsApi* | [**findSalesReports**](docs/Api/SalesReportsApi.md#findsalesreports) | **POST** /{strDatabase}/layouts/api_SPY_Sale/_find | finds sales reports
*SalesReportsApi* | [**getSalesReport**](docs/Api/SalesReportsApi.md#getsalesreport) | **GET** /{strDatabase}/layouts/api_SPY_Sale/records/{iRecordID} | retrieves a Sales Report line
*SalesReportsApi* | [**updateSalesReport**](docs/Api/SalesReportsApi.md#updatesalesreport) | **PATCH** /{strDatabase}/layouts/api_SPY_Sale/records/{iRecordID} | Updates a Sales Report


## Documentation For Models

 - [AuthenticationResponseObject](docs/Model/AuthenticationResponseObject.md)
 - [CreateOrUpdateDeliveryLineRequest](docs/Model/CreateOrUpdateDeliveryLineRequest.md)
 - [CreateOrUpdateDeliveryRequest](docs/Model/CreateOrUpdateDeliveryRequest.md)
 - [CreateOrUpdateProductRequest](docs/Model/CreateOrUpdateProductRequest.md)
 - [CreateOrUpdateProductTypeRequest](docs/Model/CreateOrUpdateProductTypeRequest.md)
 - [CreateOrUpdateSalesReportRequest](docs/Model/CreateOrUpdateSalesReportRequest.md)
 - [CreateRecordResponse](docs/Model/CreateRecordResponse.md)
 - [CreateRecordResponseField](docs/Model/CreateRecordResponseField.md)
 - [DefaultResponseObject](docs/Model/DefaultResponseObject.md)
 - [Delivery](docs/Model/Delivery.md)
 - [DeliveryLine](docs/Model/DeliveryLine.md)
 - [EmptyObject](docs/Model/EmptyObject.md)
 - [FindProductRequest](docs/Model/FindProductRequest.md)
 - [FindProductResponse](docs/Model/FindProductResponse.md)
 - [FindProductTypeRequest](docs/Model/FindProductTypeRequest.md)
 - [FindProductTypeResponse](docs/Model/FindProductTypeResponse.md)
 - [FindSalesReportRequest](docs/Model/FindSalesReportRequest.md)
 - [FindSalesReportResponse](docs/Model/FindSalesReportResponse.md)
 - [InternalRecordFields](docs/Model/InternalRecordFields.md)
 - [MessageObject](docs/Model/MessageObject.md)
 - [MessagesResponseField](docs/Model/MessagesResponseField.md)
 - [Product](docs/Model/Product.md)
 - [ProductRecordArray](docs/Model/ProductRecordArray.md)
 - [ProductRecordObject](docs/Model/ProductRecordObject.md)
 - [ProductType](docs/Model/ProductType.md)
 - [ProductTypeRecordArray](docs/Model/ProductTypeRecordArray.md)
 - [ProductTypeRecordObject](docs/Model/ProductTypeRecordObject.md)
 - [SalesReport](docs/Model/SalesReport.md)
 - [SalesReportRecordArray](docs/Model/SalesReportRecordArray.md)
 - [SalesReportRecordObject](docs/Model/SalesReportRecordObject.md)
 - [TokenResponseField](docs/Model/TokenResponseField.md)


## Documentation For Authorization


## BasicAuthentication

- **Type**: HTTP basic authentication

## Token

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

thomas@spysystem.dk


