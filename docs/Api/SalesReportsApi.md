# iPosExchanger\SalesReportsApi

All URIs are relative to https://fm.macpartner.dk/fmi/data/v1/databases, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**findSalesReports()**](SalesReportsApi.md#findSalesReports) | **POST** /{strDatabase}/layouts/api_SPY_Sale/_find | finds sales reports |
| [**getSalesReport()**](SalesReportsApi.md#getSalesReport) | **GET** /{strDatabase}/layouts/api_SPY_Sale/records/{iRecordID} | retrieves a Sales Report line |
| [**updateSalesReport()**](SalesReportsApi.md#updateSalesReport) | **PATCH** /{strDatabase}/layouts/api_SPY_Sale/records/{iRecordID} | Updates a Sales Report |


## `findSalesReports()`

```php
findSalesReports($str_database, $x_spy_use_next_middleware, $data): \iPosExchanger\Model\FindSalesReportResponse
```

finds sales reports

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\SalesReportsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$x_spy_use_next_middleware = '1'; // string | use Next Middleware to paginate
$data = new \iPosExchanger\Model\FindSalesReportRequest(); // \iPosExchanger\Model\FindSalesReportRequest | Search data

try {
    $result = $apiInstance->findSalesReports($str_database, $x_spy_use_next_middleware, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SalesReportsApi->findSalesReports: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **x_spy_use_next_middleware** | **string**| use Next Middleware to paginate | [optional] [default to &#39;1&#39;] |
| **data** | [**\iPosExchanger\Model\FindSalesReportRequest**](../Model/FindSalesReportRequest.md)| Search data | [optional] |

### Return type

[**\iPosExchanger\Model\FindSalesReportResponse**](../Model/FindSalesReportResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSalesReport()`

```php
getSalesReport($str_database, $i_record_id): \iPosExchanger\Model\FindSalesReportResponse
```

retrieves a Sales Report line

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\SalesReportsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id

try {
    $result = $apiInstance->getSalesReport($str_database, $i_record_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SalesReportsApi->getSalesReport: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **i_record_id** | **int**| FileMaker record id | |

### Return type

[**\iPosExchanger\Model\FindSalesReportResponse**](../Model/FindSalesReportResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateSalesReport()`

```php
updateSalesReport($str_database, $i_record_id, $data): \iPosExchanger\Model\DefaultResponseObject
```

Updates a Sales Report

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\SalesReportsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id
$data = new \iPosExchanger\Model\CreateOrUpdateSalesReportRequest(); // \iPosExchanger\Model\CreateOrUpdateSalesReportRequest

try {
    $result = $apiInstance->updateSalesReport($str_database, $i_record_id, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SalesReportsApi->updateSalesReport: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **i_record_id** | **int**| FileMaker record id | |
| **data** | [**\iPosExchanger\Model\CreateOrUpdateSalesReportRequest**](../Model/CreateOrUpdateSalesReportRequest.md)|  | [optional] |

### Return type

[**\iPosExchanger\Model\DefaultResponseObject**](../Model/DefaultResponseObject.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
