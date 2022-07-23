# iPosExchanger\PaymentsApi

All URIs are relative to https://fm.macpartner.dk/fmi/data/v1/databases, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**findPayments()**](PaymentsApi.md#findPayments) | **POST** /{strDatabase}/layouts/api_SPY_booking/_find | finds payments |
| [**getPayment()**](PaymentsApi.md#getPayment) | **GET** /{strDatabase}/layouts/api_SPY_booking/records/{iRecordID} | retrieves a Payment line |
| [**updatePayment()**](PaymentsApi.md#updatePayment) | **PATCH** /{strDatabase}/layouts/api_SPY_booking/records/{iRecordID} | Updates a Payment |


## `findPayments()`

```php
findPayments($str_database, $data): \iPosExchanger\Model\FindPaymentsResponse
```

finds payments

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\PaymentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$data = new \iPosExchanger\Model\FindPaymentsRequest(); // \iPosExchanger\Model\FindPaymentsRequest | Search data

try {
    $result = $apiInstance->findPayments($str_database, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentsApi->findPayments: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **data** | [**\iPosExchanger\Model\FindPaymentsRequest**](../Model/FindPaymentsRequest.md)| Search data | [optional] |

### Return type

[**\iPosExchanger\Model\FindPaymentsResponse**](../Model/FindPaymentsResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPayment()`

```php
getPayment($str_database, $i_record_id): \iPosExchanger\Model\FindPaymentsResponse
```

retrieves a Payment line

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\PaymentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id

try {
    $result = $apiInstance->getPayment($str_database, $i_record_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentsApi->getPayment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **i_record_id** | **int**| FileMaker record id | |

### Return type

[**\iPosExchanger\Model\FindPaymentsResponse**](../Model/FindPaymentsResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updatePayment()`

```php
updatePayment($str_database, $i_record_id, $data): \iPosExchanger\Model\DefaultResponseObject
```

Updates a Payment

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');


$apiInstance = new iPosExchanger\Api\PaymentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id
$data = new \iPosExchanger\Model\CreateOrUpdatePaymentRequest(); // \iPosExchanger\Model\CreateOrUpdatePaymentRequest

try {
    $result = $apiInstance->updatePayment($str_database, $i_record_id, $data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentsApi->updatePayment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **str_database** | **string**| Target Database in FileMaker | |
| **i_record_id** | **int**| FileMaker record id | |
| **data** | [**\iPosExchanger\Model\CreateOrUpdatePaymentRequest**](../Model/CreateOrUpdatePaymentRequest.md)|  | [optional] |

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
