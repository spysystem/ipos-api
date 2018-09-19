# iPosExchanger\AuthenticationApi

All URIs are relative to *https://server02.ipos.dk/fmi/data/v1/databases*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDataToken**](AuthenticationApi.md#getDataToken) | **POST** /{strDatabase}/sessions | gets an authentication token (valid for 15 minutes)


# **getDataToken**
> \iPosExchanger\Model\AuthenticationResponseObject getDataToken($str_database, $empty_object)

gets an authentication token (valid for 15 minutes)

### Example
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **empty_object** | [**\iPosExchanger\Model\EmptyObject**](../Model/EmptyObject.md)| Connecting data | [optional]

### Return type

[**\iPosExchanger\Model\AuthenticationResponseObject**](../Model/AuthenticationResponseObject.md)

### Authorization

[BasicAuthentication](../../README.md#BasicAuthentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

