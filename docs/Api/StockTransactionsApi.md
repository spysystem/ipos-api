# iPosExchanger\StockTransactionsApi

All URIs are relative to https://fm.macpartner.dk/fmi/data/v1/databases, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createStockTransaction()**](StockTransactionsApi.md#createStockTransaction) | **POST** /{strDatabase}/layouts/api_SPY_lagertrans/records | Creates a Stock Transaction |
| [**findStockTransactions()**](StockTransactionsApi.md#findStockTransactions) | **POST** /{strDatabase}/layouts/api_SPY_lagertrans/_find | finds stock Transactions (moves) |
| [**getStockTransactions()**](StockTransactionsApi.md#getStockTransactions) | **GET** /{strDatabase}/layouts/api_SPY_lagertrans/records/{iRecordID} | retrieves a Stock Transaction line |
| [**updateStockTransaction()**](StockTransactionsApi.md#updateStockTransaction) | **PATCH** /{strDatabase}/layouts/api_SPY_lagertrans/records/{iRecordID} | Updates a Stock Transaction |


## `createStockTransaction()`

```php
createStockTransaction($str_database, $data): \iPosExchanger\Model\CreateRecordResponse
```

Creates a Stock Transaction

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\StockTransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$data = new \iPosExchanger\Model\CreateOrUpdateStockTransactionRequest(); // \iPosExchanger\Model\CreateOrUpdateStockTransactionRequest

try {
    $result = $apiInstance->createStockTransaction($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockTransactionsApi->createStockTransaction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **data** | [**\iPosExchanger\Model\CreateOrUpdateStockTransactionRequest**](../Model/CreateOrUpdateStockTransactionRequest.md)|  | [optional] |

### Return type

[**\iPosExchanger\Model\CreateRecordResponse**](../Model/CreateRecordResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `findStockTransactions()`

```php
findStockTransactions($str_database, $data): \iPosExchanger\Model\FindStockTransactionResponse
```

finds stock Transactions (moves)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\StockTransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$data = new \iPosExchanger\Model\FindStockTransactionRequest(); // \iPosExchanger\Model\FindStockTransactionRequest | Search data

try {
    $result = $apiInstance->findStockTransactions($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockTransactionsApi->findStockTransactions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **data** | [**\iPosExchanger\Model\FindStockTransactionRequest**](../Model/FindStockTransactionRequest.md)| Search data | [optional] |

### Return type

[**\iPosExchanger\Model\FindStockTransactionResponse**](../Model/FindStockTransactionResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStockTransactions()`

```php
getStockTransactions($str_database, $i_record_id): \iPosExchanger\Model\FindStockTransactionResponse
```

retrieves a Stock Transaction line

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\StockTransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id

try {
    $result = $apiInstance->getStockTransactions($str_database, $i_record_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockTransactionsApi->getStockTransactions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **i_record_id** | **int**| FileMaker record id | |

### Return type

[**\iPosExchanger\Model\FindStockTransactionResponse**](../Model/FindStockTransactionResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateStockTransaction()`

```php
updateStockTransaction($str_database, $i_record_id, $data): \iPosExchanger\Model\DefaultResponseObject
```

Updates a Stock Transaction

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\StockTransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id
$data = new \iPosExchanger\Model\CreateOrUpdateStockTransactionRequest(); // \iPosExchanger\Model\CreateOrUpdateStockTransactionRequest

try {
    $result = $apiInstance->updateStockTransaction($str_database, $i_record_id, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockTransactionsApi->updateStockTransaction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **i_record_id** | **int**| FileMaker record id | |
| **data** | [**\iPosExchanger\Model\CreateOrUpdateStockTransactionRequest**](../Model/CreateOrUpdateStockTransactionRequest.md)|  | [optional] |

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
