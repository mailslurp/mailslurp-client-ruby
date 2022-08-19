# MailSlurpClient::ApiUserControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_json_property_as_string**](ApiUserControllerApi#get_json_property_as_string) | **POST** /user/json/pluck | 
[**get_user_info**](ApiUserControllerApi#get_user_info) | **GET** /user/info | 



## get_json_property_as_string

> String get_json_property_as_string(property, body)



Utility function to extract properties from JSON objects in language where this is cumbersome.

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

api_instance = MailSlurpClient::ApiUserControllerApi.new
property = 'property_example' # String | JSON property name or dot separated path selector such as `a.b.c`
body = nil # Object | 

begin
  result = api_instance.get_json_property_as_string(property, body)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ApiUserControllerApi->get_json_property_as_string: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property** | **String**| JSON property name or dot separated path selector such as &#x60;a.b.c&#x60; | 
 **body** | **Object**|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## get_user_info

> UserInfoDto get_user_info



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

api_instance = MailSlurpClient::ApiUserControllerApi.new

begin
  result = api_instance.get_user_info
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ApiUserControllerApi->get_user_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserInfoDto**](UserInfoDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

