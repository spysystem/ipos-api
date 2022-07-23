# iPosExchanger\StockLinesApi

All URIs are relative to https://fm.macpartner.dk/fmi/data/v1/databases, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createStockLine()**](StockLinesApi.md#createStockLine) | **POST** /{strDatabase}/layouts/api_lager/records | Creates a Stock line entry |
| [**findStockLines()**](StockLinesApi.md#findStockLines) | **POST** /{strDatabase}/layouts/api_lager/_find | finds stock lines |
| [**getStockLines()**](StockLinesApi.md#getStockLines) | **GET** /{strDatabase}/layouts/api_lager/records/{iRecordID} | retrieves a Stock line entry |
| [**updateStockLine()**](StockLinesApi.md#updateStockLine) | **PATCH** /{strDatabase}/layouts/api_lager/records/{iRecordID} | Updates a Stock line entry |


## `createStockLine()`

```php
createStockLine($str_database, $data): \iPosExchanger\Model\DefaultResponseObject
```

Creates a Stock line entry

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\StockLinesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$data = new \iPosExchanger\Model\CreateOrUpdateStockItemRequest(); // \iPosExchanger\Model\CreateOrUpdateStockItemRequest

try {
    $result = $apiInstance->createStockLine($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockLinesApi->createStockLine: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **data** | [**\iPosExchanger\Model\CreateOrUpdateStockItemRequest**](../Model/CreateOrUpdateStockItemRequest.md)|  | [optional] |

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

## `findStockLines()`

```php
findStockLines($str_database, $data): \iPosExchanger\Model\FindStockItemsResponse
```

finds stock lines

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\StockLinesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$data = new \iPosExchanger\Model\FindStockItemsRequest(); // \iPosExchanger\Model\FindStockItemsRequest | Search data

try {
    $result = $apiInstance->findStockLines($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockLinesApi->findStockLines: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **data** | [**\iPosExchanger\Model\FindStockItemsRequest**](../Model/FindStockItemsRequest.md)| Search data | [optional] |

### Return type

[**\iPosExchanger\Model\FindStockItemsResponse**](../Model/FindStockItemsResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStockLines()`

```php
getStockLines($str_database, $i_record_id): \iPosExchanger\Model\FindStockItemsResponse
```

retrieves a Stock line entry

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\StockLinesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id

try {
    $result = $apiInstance->getStockLines($str_database, $i_record_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockLinesApi->getStockLines: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **i_record_id** | **int**| FileMaker record id | |

### Return type

[**\iPosExchanger\Model\FindStockItemsResponse**](../Model/FindStockItemsResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateStockLine()`

```php
updateStockLine($str_database, $i_record_id, $data): \iPosExchanger\Model\DefaultResponseObject
```

Updates a Stock line entry

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\StockLinesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id
$data = new \iPosExchanger\Model\CreateOrUpdateStockItemRequest(); // \iPosExchanger\Model\CreateOrUpdateStockItemRequest

try {
    $result = $apiInstance->updateStockLine($str_database, $i_record_id, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockLinesApi->updateStockLine: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **i_record_id** | **int**| FileMaker record id | |
| **data** | [**\iPosExchanger\Model\CreateOrUpdateStockItemRequest**](../Model/CreateOrUpdateStockItemRequest.md)|  | [optional] |

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
