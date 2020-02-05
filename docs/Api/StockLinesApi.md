# iPosExchanger\StockLinesApi

All URIs are relative to *https://fm.macpartner.dk/fmi/data/v1/databases*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findStockLines**](StockLinesApi.md#findStockLines) | **POST** /{strDatabase}/layouts/api_lager/_find | finds stock lines
[**getStockLines**](StockLinesApi.md#getStockLines) | **GET** /{strDatabase}/layouts/api_lager/records/{iRecordID} | retrieves a Stock line entry


# **findStockLines**
> \iPosExchanger\Model\FindStockItemsResponse findStockLines($str_database, $find_stock_items_request)

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
$find_stock_items_request = new \iPosExchanger\Model\FindStockItemsRequest(); // \iPosExchanger\Model\FindStockItemsRequest | Search data

try {
    $result = $apiInstance->findStockLines($str_database, $find_stock_items_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StockLinesApi->findStockLines: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **find_stock_items_request** | [**\iPosExchanger\Model\FindStockItemsRequest**](../Model/FindStockItemsRequest.md)| Search data | [optional]

### Return type

[**\iPosExchanger\Model\FindStockItemsResponse**](../Model/FindStockItemsResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getStockLines**
> \iPosExchanger\Model\FindStockItemsResponse getStockLines($str_database, $i_record_id)

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
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **i_record_id** | **int**| FileMaker record id |

### Return type

[**\iPosExchanger\Model\FindStockItemsResponse**](../Model/FindStockItemsResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

