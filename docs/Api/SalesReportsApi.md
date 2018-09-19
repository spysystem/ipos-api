# iPosExchanger\SalesReportsApi

All URIs are relative to *https://server02.ipos.dk/fmi/data/v1/databases*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSalesReports**](SalesReportsApi.md#findSalesReports) | **POST** /{strDatabase}/layouts/api_SPY_Sale/_find | finds sales reports
[**getSalesReport**](SalesReportsApi.md#getSalesReport) | **GET** /{strDatabase}/layouts/api_SPY_Sale/records/{iRecordID} | retrieves a Sales Report line
[**updateSalesReport**](SalesReportsApi.md#updateSalesReport) | **PATCH** /{strDatabase}/layouts/api_SPY_Sale/records/{iRecordID} | Updates a Sales Report


# **findSalesReports**
> \iPosExchanger\Model\FindSalesReportResponse findSalesReports($str_database, $find_sales_report_request)

finds sales reports

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

$apiInstance = new iPosExchanger\Api\SalesReportsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$find_sales_report_request = new \iPosExchanger\Model\FindSalesReportRequest(); // \iPosExchanger\Model\FindSalesReportRequest | Search data

try {
    $result = $apiInstance->findSalesReports($str_database, $find_sales_report_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SalesReportsApi->findSalesReports: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **find_sales_report_request** | [**\iPosExchanger\Model\FindSalesReportRequest**](../Model/FindSalesReportRequest.md)| Search data | [optional]

### Return type

[**\iPosExchanger\Model\FindSalesReportResponse**](../Model/FindSalesReportResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSalesReport**
> \iPosExchanger\Model\FindSalesReportResponse getSalesReport($str_database, $i_record_id)

retrieves a Sales Report line

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

$apiInstance = new iPosExchanger\Api\SalesReportsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id

try {
    $result = $apiInstance->getSalesReport($str_database, $i_record_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SalesReportsApi->getSalesReport: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **i_record_id** | **int**| FileMaker record id |

### Return type

[**\iPosExchanger\Model\FindSalesReportResponse**](../Model/FindSalesReportResponse.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateSalesReport**
> \iPosExchanger\Model\DefaultResponseObject updateSalesReport($str_database, $i_record_id, $create_or_update_sales_report_request)

Updates a Sales Report

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Token
$config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = iPosExchanger\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

$apiInstance = new iPosExchanger\Api\SalesReportsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$str_database = 'str_database_example'; // string | Target Database in FileMaker
$i_record_id = 56; // int | FileMaker record id
$create_or_update_sales_report_request = new \iPosExchanger\Model\CreateOrUpdateSalesReportRequest(); // \iPosExchanger\Model\CreateOrUpdateSalesReportRequest | 

try {
    $result = $apiInstance->updateSalesReport($str_database, $i_record_id, $create_or_update_sales_report_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SalesReportsApi->updateSalesReport: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **str_database** | **string**| Target Database in FileMaker |
 **i_record_id** | **int**| FileMaker record id |
 **create_or_update_sales_report_request** | [**\iPosExchanger\Model\CreateOrUpdateSalesReportRequest**](../Model/CreateOrUpdateSalesReportRequest.md)|  | [optional]

### Return type

[**\iPosExchanger\Model\DefaultResponseObject**](../Model/DefaultResponseObject.md)

### Authorization

[Token](../../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

