# iPosExchanger\AuthenticationApi

All URIs are relative to https://fm.macpartner.dk/fmi/data/v1/databases, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getDataToken()**](AuthenticationApi.md#getDataToken) | **POST** /{strDatabase}/sessions | gets an authentication token (valid for 15 minutes) |


## `getDataToken()`

```php
getDataToken($str_database, $data): \iPosExchanger\Model\AuthenticationResponseObject
```

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
$data = array('key' => new \stdClass); // object | Connecting data

try {
    $result = $apiInstance->getDataToken($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AuthenticationApi->getDataToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **data** | **object**| Connecting data | [optional] |

### Return type

[**\iPosExchanger\Model\AuthenticationResponseObject**](../Model/AuthenticationResponseObject.md)

### Authorization

[BasicAuthentication](../../README.md#BasicAuthentication)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
