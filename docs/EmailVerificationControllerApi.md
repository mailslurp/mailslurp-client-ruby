# MailSlurpClient::EmailVerificationControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_validation_requests**](EmailVerificationControllerApi#get_validation_requests) | **GET** /email-verification/validation-requests | Validate a list of email addresses. Per unit billing. See your plan for pricing.
[**validate_email_address_list**](EmailVerificationControllerApi#validate_email_address_list) | **POST** /email-verification/email-address-list | Validate a list of email addresses. Per unit billing. See your plan for pricing.



## get_validation_requests

> PageEmailValidationRequest get_validation_requests(opts)

Validate a list of email addresses. Per unit billing. See your plan for pricing.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::EmailVerificationControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size for paginated result list.
  sort: 'DESC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at before the given timestamp
  is_valid: true # Boolean | Filter where email is valid is true or false
}

begin
  #Validate a list of email addresses. Per unit billing. See your plan for pricing.
  result = api_instance.get_validation_requests(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailVerificationControllerApi->get_validation_requests: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **is_valid** | **Boolean**| Filter where email is valid is true or false | [optional] 

### Return type

[**PageEmailValidationRequest**](PageEmailValidationRequest)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## validate_email_address_list

> ValidateEmailAddressListResult validate_email_address_list(validate_email_address_list_options)

Validate a list of email addresses. Per unit billing. See your plan for pricing.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::EmailVerificationControllerApi.new
validate_email_address_list_options = MailSlurpClient::ValidateEmailAddressListOptions.new # ValidateEmailAddressListOptions | 

begin
  #Validate a list of email addresses. Per unit billing. See your plan for pricing.
  result = api_instance.validate_email_address_list(validate_email_address_list_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailVerificationControllerApi->validate_email_address_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validate_email_address_list_options** | [**ValidateEmailAddressListOptions**](ValidateEmailAddressListOptions)|  | 

### Return type

[**ValidateEmailAddressListResult**](ValidateEmailAddressListResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

