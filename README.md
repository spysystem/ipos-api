# OpenAPIClient-php

OpenAPI description for the iPOS integration for FileMaker 17 API

For more information, please visit [http://spysystem.dk](http://spysystem.dk).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
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
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
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
$data = array('key' => new \stdClass); // object | Connecting data

try {
    $result = $apiInstance->getDataToken($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AuthenticationApi->getDataToken: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://fm.macpartner.dk/fmi/data/v1/databases*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthenticationApi* | [**getDataToken**](docs/Api/AuthenticationApi.md#getdatatoken) | **POST** /{strDatabase}/sessions | gets an authentication token (valid for 15 minutes)
*DeliveriesApi* | [**createDelivery**](docs/Api/DeliveriesApi.md#createdelivery) | **POST** /{strDatabase}/layouts/api_SPY_Varemodtagelse/records | Creates a new Delivery
*DeliveryLinesApi* | [**createDeliveryLine**](docs/Api/DeliveryLinesApi.md#createdeliveryline) | **POST** /{strDatabase}/layouts/api_SPY_Varemodtagelse_linie/records | Creates a new Delivery Line
*PaymentsApi* | [**findPayments**](docs/Api/PaymentsApi.md#findpayments) | **POST** /{strDatabase}/layouts/api_SPY_booking/_find | finds payments
*PaymentsApi* | [**getPayment**](docs/Api/PaymentsApi.md#getpayment) | **GET** /{strDatabase}/layouts/api_SPY_booking/records/{iRecordID} | retrieves a Payment line
*PaymentsApi* | [**updatePayment**](docs/Api/PaymentsApi.md#updatepayment) | **PATCH** /{strDatabase}/layouts/api_SPY_booking/records/{iRecordID} | Updates a Payment
*ProductTypesApi* | [**createProductType**](docs/Api/ProductTypesApi.md#createproducttype) | **POST** /{strDatabase}/layouts/api_SPY_varegrupper/records | Creates a new product type
*ProductTypesApi* | [**findProductTypes**](docs/Api/ProductTypesApi.md#findproducttypes) | **POST** /{strDatabase}/layouts/api_SPY_varegrupper/_find | finds a product type based on its Id
*ProductTypesApi* | [**getProductTypes**](docs/Api/ProductTypesApi.md#getproducttypes) | **GET** /{strDatabase}/layouts/api_SPY_varegrupper/records | retrieves all product types
*ProductsApi* | [**createProduct**](docs/Api/ProductsApi.md#createproduct) | **POST** /{strDatabase}/layouts/api_SPY_varer/records | Creates a new product
*ProductsApi* | [**findProducts**](docs/Api/ProductsApi.md#findproducts) | **POST** /{strDatabase}/layouts/api_SPY_varer/_find | finds a product based on its EAN code
*ProductsApi* | [**getProduct**](docs/Api/ProductsApi.md#getproduct) | **GET** /{strDatabase}/layouts/api_SPY_varer/records/{iRecordID} | retrieves a product
*ProductsApi* | [**getProducts**](docs/Api/ProductsApi.md#getproducts) | **GET** /{strDatabase}/layouts/api_SPY_varer/records | retrieves products
*ProductsApi* | [**updateProduct**](docs/Api/ProductsApi.md#updateproduct) | **PATCH** /{strDatabase}/layouts/api_SPY_varer/records/{iRecordID} | Updates a product
*SalesReportsApi* | [**findSalesReports**](docs/Api/SalesReportsApi.md#findsalesreports) | **POST** /{strDatabase}/layouts/api_SPY_Sale/_find | finds sales reports
*SalesReportsApi* | [**getSalesReport**](docs/Api/SalesReportsApi.md#getsalesreport) | **GET** /{strDatabase}/layouts/api_SPY_Sale/records/{iRecordID} | retrieves a Sales Report line
*SalesReportsApi* | [**updateSalesReport**](docs/Api/SalesReportsApi.md#updatesalesreport) | **PATCH** /{strDatabase}/layouts/api_SPY_Sale/records/{iRecordID} | Updates a Sales Report
*StockLinesApi* | [**createStockLine**](docs/Api/StockLinesApi.md#createstockline) | **POST** /{strDatabase}/layouts/api_lager/records | Creates a Stock line entry
*StockLinesApi* | [**findStockLines**](docs/Api/StockLinesApi.md#findstocklines) | **POST** /{strDatabase}/layouts/api_lager/_find | finds stock lines
*StockLinesApi* | [**getStockLines**](docs/Api/StockLinesApi.md#getstocklines) | **GET** /{strDatabase}/layouts/api_lager/records/{iRecordID} | retrieves a Stock line entry
*StockLinesApi* | [**updateStockLine**](docs/Api/StockLinesApi.md#updatestockline) | **PATCH** /{strDatabase}/layouts/api_lager/records/{iRecordID} | Updates a Stock line entry
*StockTransactionsApi* | [**createStockTransaction**](docs/Api/StockTransactionsApi.md#createstocktransaction) | **POST** /{strDatabase}/layouts/api_SPY_lagertrans/records | Creates a Stock Transaction
*StockTransactionsApi* | [**findStockTransactions**](docs/Api/StockTransactionsApi.md#findstocktransactions) | **POST** /{strDatabase}/layouts/api_SPY_lagertrans/_find | finds stock Transactions (moves)
*StockTransactionsApi* | [**getStockTransactions**](docs/Api/StockTransactionsApi.md#getstocktransactions) | **GET** /{strDatabase}/layouts/api_SPY_lagertrans/records/{iRecordID} | retrieves a Stock Transaction line
*StockTransactionsApi* | [**updateStockTransaction**](docs/Api/StockTransactionsApi.md#updatestocktransaction) | **PATCH** /{strDatabase}/layouts/api_SPY_lagertrans/records/{iRecordID} | Updates a Stock Transaction

## Models

- [AuthenticationResponseObject](docs/Model/AuthenticationResponseObject.md)
- [CreateOrUpdateDeliveryLineRequest](docs/Model/CreateOrUpdateDeliveryLineRequest.md)
- [CreateOrUpdateDeliveryRequest](docs/Model/CreateOrUpdateDeliveryRequest.md)
- [CreateOrUpdatePaymentRequest](docs/Model/CreateOrUpdatePaymentRequest.md)
- [CreateOrUpdateProductRequest](docs/Model/CreateOrUpdateProductRequest.md)
- [CreateOrUpdateProductTypeRequest](docs/Model/CreateOrUpdateProductTypeRequest.md)
- [CreateOrUpdateSalesReportRequest](docs/Model/CreateOrUpdateSalesReportRequest.md)
- [CreateOrUpdateStockItemRequest](docs/Model/CreateOrUpdateStockItemRequest.md)
- [CreateOrUpdateStockTransactionRequest](docs/Model/CreateOrUpdateStockTransactionRequest.md)
- [CreateRecordResponse](docs/Model/CreateRecordResponse.md)
- [CreateRecordResponseField](docs/Model/CreateRecordResponseField.md)
- [DefaultResponseObject](docs/Model/DefaultResponseObject.md)
- [Delivery](docs/Model/Delivery.md)
- [DeliveryLine](docs/Model/DeliveryLine.md)
- [FindPaymentsRequest](docs/Model/FindPaymentsRequest.md)
- [FindPaymentsResponse](docs/Model/FindPaymentsResponse.md)
- [FindProductRequest](docs/Model/FindProductRequest.md)
- [FindProductResponse](docs/Model/FindProductResponse.md)
- [FindProductTypeRequest](docs/Model/FindProductTypeRequest.md)
- [FindProductTypeResponse](docs/Model/FindProductTypeResponse.md)
- [FindSalesReportRequest](docs/Model/FindSalesReportRequest.md)
- [FindSalesReportResponse](docs/Model/FindSalesReportResponse.md)
- [FindStockItemsRequest](docs/Model/FindStockItemsRequest.md)
- [FindStockItemsResponse](docs/Model/FindStockItemsResponse.md)
- [FindStockTransactionRequest](docs/Model/FindStockTransactionRequest.md)
- [FindStockTransactionResponse](docs/Model/FindStockTransactionResponse.md)
- [InternalRecordFields](docs/Model/InternalRecordFields.md)
- [MessageObject](docs/Model/MessageObject.md)
- [Payment](docs/Model/Payment.md)
- [PaymentRecordArray](docs/Model/PaymentRecordArray.md)
- [PaymentRecordObject](docs/Model/PaymentRecordObject.md)
- [PaymentRecordObjectAllOf](docs/Model/PaymentRecordObjectAllOf.md)
- [Product](docs/Model/Product.md)
- [ProductRecordArray](docs/Model/ProductRecordArray.md)
- [ProductRecordObject](docs/Model/ProductRecordObject.md)
- [ProductRecordObjectAllOf](docs/Model/ProductRecordObjectAllOf.md)
- [ProductType](docs/Model/ProductType.md)
- [ProductTypeRecordArray](docs/Model/ProductTypeRecordArray.md)
- [ProductTypeRecordObject](docs/Model/ProductTypeRecordObject.md)
- [ProductTypeRecordObjectAllOf](docs/Model/ProductTypeRecordObjectAllOf.md)
- [SalesReport](docs/Model/SalesReport.md)
- [SalesReportRecordArray](docs/Model/SalesReportRecordArray.md)
- [SalesReportRecordObject](docs/Model/SalesReportRecordObject.md)
- [SalesReportRecordObjectAllOf](docs/Model/SalesReportRecordObjectAllOf.md)
- [StockItem](docs/Model/StockItem.md)
- [StockItemsRecordArray](docs/Model/StockItemsRecordArray.md)
- [StockItemsRecordObject](docs/Model/StockItemsRecordObject.md)
- [StockItemsRecordObjectAllOf](docs/Model/StockItemsRecordObjectAllOf.md)
- [StockTransaction](docs/Model/StockTransaction.md)
- [StockTransactionRecordArray](docs/Model/StockTransactionRecordArray.md)
- [StockTransactionRecordObject](docs/Model/StockTransactionRecordObject.md)
- [StockTransactionRecordObjectAllOf](docs/Model/StockTransactionRecordObjectAllOf.md)
- [TokenResponseField](docs/Model/TokenResponseField.md)

## Authorization

### BasicAuthentication

- **Type**: HTTP basic authentication


### Token

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

thomas@spysystem.dk

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
    - Package version: `1.8.0.1`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
