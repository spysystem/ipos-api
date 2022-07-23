# iPosExchanger\DeliveriesApi

All URIs are relative to https://fm.macpartner.dk/fmi/data/v1/databases, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createDelivery()**](DeliveriesApi.md#createDelivery) | **POST** /{strDatabase}/layouts/api_SPY_Varemodtagelse/records | Creates a new Delivery |


## `createDelivery()`

```php
createDelivery($str_database, $data): \iPosExchanger\Model\CreateRecordResponse
```

Creates a new Delivery

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\DeliveriesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$data = new \iPosExchanger\Model\CreateOrUpdateDeliveryRequest(); // \iPosExchanger\Model\CreateOrUpdateDeliveryRequest | Record to be created

try {
    $result = $apiInstance->createDelivery($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DeliveriesApi->createDelivery: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **data** | [**\iPosExchanger\Model\CreateOrUpdateDeliveryRequest**](../Model/CreateOrUpdateDeliveryRequest.md)| Record to be created | [optional] |

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
