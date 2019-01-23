# iPosExchanger\PaymentsApi

All URIs are relative to *https://server02.ipos.dk/fmi/data/v1/databases*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findPayments**](PaymentsApi.md#findPayments) | **POST** /{strDatabase}/layouts/api_SPY_booking/_find | finds payments
[**getPayment**](PaymentsApi.md#getPayment) | **GET** /{strDatabase}/layouts/api_SPY_booking/records/{iRecordID} | retrieves a Payment line
[**updatePayment**](PaymentsApi.md#updatePayment) | **PATCH** /{strDatabase}/layouts/api_SPY_booking/records/{iRecordID} | Updates a Payment


# **findPayments**
> \iPosExchanger\Model\FindPaymentsResponse findPayments($str_database, $find_payments_request)

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
$find_payments_request = new \iPosExchanger\Model\FindPaymentsRequest(); // \iPosExchanger\Model\FindPaymentsRequest | Search data

try {
    $result = $apiInstance->findPayments($str_database, $find_payments_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentsApi->findPayments: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **find_payments_request** | [**\iPosExchanger\Model\FindPaymentsRequest**](../Model/FindPaymentsRequest.md)| Search data | [optional]

### Return type

[**\iPosExchanger\Model\FindPaymentsResponse**](../Model/FindPaymentsResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPayment**
> \iPosExchanger\Model\FindPaymentsResponse getPayment($str_database, $i_record_id)

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
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **i_record_id** | **int**| FileMaker record id |

### Return type

[**\iPosExchanger\Model\FindPaymentsResponse**](../Model/FindPaymentsResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updatePayment**
> \iPosExchanger\Model\DefaultResponseObject updatePayment($str_database, $i_record_id, $create_or_update_payment_request)

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
$create_or_update_payment_request = new \iPosExchanger\Model\CreateOrUpdatePaymentRequest(); // \iPosExchanger\Model\CreateOrUpdatePaymentRequest | 

try {
    $result = $apiInstance->updatePayment($str_database, $i_record_id, $create_or_update_payment_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PaymentsApi->updatePayment: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **i_record_id** | **int**| FileMaker record id |
 **create_or_update_payment_request** | [**\iPosExchanger\Model\CreateOrUpdatePaymentRequest**](../Model/CreateOrUpdatePaymentRequest.md)|  | [optional]

### Return type

[**\iPosExchanger\Model\DefaultResponseObject**](../Model/DefaultResponseObject.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

