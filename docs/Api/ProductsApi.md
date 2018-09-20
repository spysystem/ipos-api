# iPosExchanger\ProductsApi

All URIs are relative to *https://server02.ipos.dk/fmi/data/v1/databases*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProduct**](ProductsApi.md#createProduct) | **POST** /{strDatabase}/layouts/api_SPY_varer/records | Creates a new product
[**findProducts**](ProductsApi.md#findProducts) | **POST** /{strDatabase}/layouts/api_SPY_varer/_find | finds a product based on its EAN code
[**getProduct**](ProductsApi.md#getProduct) | **GET** /{strDatabase}/layouts/api_SPY_varer/records/{iRecordID} | retrieves a product
[**getProducts**](ProductsApi.md#getProducts) | **GET** /{strDatabase}/layouts/api_SPY_varer/records | retrieves products
[**updateProduct**](ProductsApi.md#updateProduct) | **PATCH** /{strDatabase}/layouts/api_SPY_varer/records/{iRecordID} | Updates a product


# **createProduct**
> \iPosExchanger\Model\CreateRecordResponse createProduct($str_database, $create_or_update_product_request)

Creates a new product

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

$apiInstance = new iPosExchanger\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$create_or_update_product_request = new \iPosExchanger\Model\CreateOrUpdateProductRequest(); // \iPosExchanger\Model\CreateOrUpdateProductRequest | Record to be created

try {
    $result = $apiInstance->createProduct($str_database, $create_or_update_product_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->createProduct: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **create_or_update_product_request** | [**\iPosExchanger\Model\CreateOrUpdateProductRequest**](../Model/CreateOrUpdateProductRequest.md)| Record to be created | [optional]

### Return type

[**\iPosExchanger\Model\CreateRecordResponse**](../Model/CreateRecordResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **findProducts**
> \iPosExchanger\Model\FindProductResponse findProducts($str_database, $find_product_request)

finds a product based on its EAN code

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

$apiInstance = new iPosExchanger\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$find_product_request = new \iPosExchanger\Model\FindProductRequest(); // \iPosExchanger\Model\FindProductRequest | Search data

try {
    $result = $apiInstance->findProducts($str_database, $find_product_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->findProducts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **find_product_request** | [**\iPosExchanger\Model\FindProductRequest**](../Model/FindProductRequest.md)| Search data | [optional]

### Return type

[**\iPosExchanger\Model\FindProductResponse**](../Model/FindProductResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getProduct**
> \iPosExchanger\Model\FindProductResponse getProduct($str_database, $i_record_id)

retrieves a product

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

$apiInstance = new iPosExchanger\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id

try {
    $result = $apiInstance->getProduct($str_database, $i_record_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->getProduct: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **i_record_id** | **int**| FileMaker record id |

### Return type

[**\iPosExchanger\Model\FindProductResponse**](../Model/FindProductResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getProducts**
> \iPosExchanger\Model\FindProductResponse getProducts($str_database, $_offset, $_limit)

retrieves products

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

$apiInstance = new iPosExchanger\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$_offset = '_offset_example'; // string | 
$_limit = '_limit_example'; // string | 

try {
    $result = $apiInstance->getProducts($str_database, $_offset, $_limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->getProducts: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **_offset** | **string**|  | [optional]
 **_limit** | **string**|  | [optional]

### Return type

[**\iPosExchanger\Model\FindProductResponse**](../Model/FindProductResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateProduct**
> \iPosExchanger\Model\DefaultResponseObject updateProduct($str_database, $i_record_id, $create_or_update_product_request)

Updates a product

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

$apiInstance = new iPosExchanger\Api\ProductsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id
$create_or_update_product_request = new \iPosExchanger\Model\CreateOrUpdateProductRequest(); // \iPosExchanger\Model\CreateOrUpdateProductRequest | 

try {
    $result = $apiInstance->updateProduct($str_database, $i_record_id, $create_or_update_product_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProductsApi->updateProduct: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **i_record_id** | **int**| FileMaker record id |
 **create_or_update_product_request** | [**\iPosExchanger\Model\CreateOrUpdateProductRequest**](../Model/CreateOrUpdateProductRequest.md)|  | [optional]

### Return type

[**\iPosExchanger\Model\DefaultResponseObject**](../Model/DefaultResponseObject.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

