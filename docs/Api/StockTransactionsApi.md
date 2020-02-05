# iPosExchanger\StockTransactionsApi

All URIs are relative to *https://fm.macpartner.dk/fmi/data/v1/databases*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findStockTransactions**](StockTransactionsApi.md#findStockTransactions) | **POST** /{strDatabase}/layouts/api_SPY_lagertrans/_find | finds stock Transactions (moves)
[**getStockTransactions**](StockTransactionsApi.md#getStockTransactions) | **GET** /{strDatabase}/layouts/api_SPY_lagertrans/records/{iRecordID} | retrieves a Stock Transaction line
[**updateStockTransaction**](StockTransactionsApi.md#updateStockTransaction) | **PATCH** /{strDatabase}/layouts/api_SPY_lagertrans/records/{iRecordID} | Updates a Stock Transaction


# **findStockTransactions**
> \iPosExchanger\Model\FindStockTransactionResponse findStockTransactions($str_database, $find_stock_transaction_request)

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
$find_stock_transaction_request = new \iPosExchanger\Model\FindStockTransactionRequest(); // \iPosExchanger\Model\FindStockTransactionRequest | Search data

try {
    $result = $apiInstance->findStockTransactions($str_database, $find_stock_transaction_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockTransactionsApi->findStockTransactions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **find_stock_transaction_request** | [**\iPosExchanger\Model\FindStockTransactionRequest**](../Model/FindStockTransactionRequest.md)| Search data | [optional]

### Return type

[**\iPosExchanger\Model\FindStockTransactionResponse**](../Model/FindStockTransactionResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getStockTransactions**
> \iPosExchanger\Model\FindStockTransactionResponse getStockTransactions($str_database, $i_record_id)

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
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **i_record_id** | **int**| FileMaker record id |

### Return type

[**\iPosExchanger\Model\FindStockTransactionResponse**](../Model/FindStockTransactionResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateStockTransaction**
> \iPosExchanger\Model\DefaultResponseObject updateStockTransaction($str_database, $i_record_id, $create_or_update_stock_transaction_request)

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
$create_or_update_stock_transaction_request = new \iPosExchanger\Model\CreateOrUpdateStockTransactionRequest(); // \iPosExchanger\Model\CreateOrUpdateStockTransactionRequest | 

try {
    $result = $apiInstance->updateStockTransaction($str_database, $i_record_id, $create_or_update_stock_transaction_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockTransactionsApi->updateStockTransaction: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **i_record_id** | **int**| FileMaker record id |
 **create_or_update_stock_transaction_request** | [**\iPosExchanger\Model\CreateOrUpdateStockTransactionRequest**](../Model/CreateOrUpdateStockTransactionRequest.md)|  | [optional]

### Return type

[**\iPosExchanger\Model\DefaultResponseObject**](../Model/DefaultResponseObject.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

