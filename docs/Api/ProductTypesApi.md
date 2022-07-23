# iPosExchanger\ProductTypesApi

All URIs are relative to https://fm.macpartner.dk/fmi/data/v1/databases, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createProductType()**](ProductTypesApi.md#createProductType) | **POST** /{strDatabase}/layouts/api_SPY_varegrupper/records | Creates a new product type |
| [**findProductTypes()**](ProductTypesApi.md#findProductTypes) | **POST** /{strDatabase}/layouts/api_SPY_varegrupper/_find | finds a product type based on its Id |
| [**getProductTypes()**](ProductTypesApi.md#getProductTypes) | **GET** /{strDatabase}/layouts/api_SPY_varegrupper/records | retrieves all product types |


## `createProductType()`

```php
createProductType($str_database, $data): \iPosExchanger\Model\CreateRecordResponse
```

Creates a new product type

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\ProductTypesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$data = new \iPosExchanger\Model\CreateOrUpdateProductTypeRequest(); // \iPosExchanger\Model\CreateOrUpdateProductTypeRequest | Record to be created

try {
    $result = $apiInstance->createProductType($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductTypesApi->createProductType: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **data** | [**\iPosExchanger\Model\CreateOrUpdateProductTypeRequest**](../Model/CreateOrUpdateProductTypeRequest.md)| Record to be created | [optional] |

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

## `findProductTypes()`

```php
findProductTypes($str_database, $data): \iPosExchanger\Model\FindProductTypeResponse
```

finds a product type based on its Id

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\ProductTypesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$data = new \iPosExchanger\Model\FindProductTypeRequest(); // \iPosExchanger\Model\FindProductTypeRequest | Search data

try {
    $result = $apiInstance->findProductTypes($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductTypesApi->findProductTypes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **data** | [**\iPosExchanger\Model\FindProductTypeRequest**](../Model/FindProductTypeRequest.md)| Search data | [optional] |

### Return type

[**\iPosExchanger\Model\FindProductTypeResponse**](../Model/FindProductTypeResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getProductTypes()`

```php
getProductTypes($str_database, $_offset, $_limit): \iPosExchanger\Model\FindProductTypeResponse
```

retrieves all product types

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\ProductTypesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$_offset = '_offset_example'; // string
$_limit = '_limit_example'; // string

try {
    $result = $apiInstance->getProductTypes($str_database, $_offset, $_limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductTypesApi->getProductTypes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **_offset** | **string**|  | [optional] |
| **_limit** | **string**|  | [optional] |

### Return type

[**\iPosExchanger\Model\FindProductTypeResponse**](../Model/FindProductTypeResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
