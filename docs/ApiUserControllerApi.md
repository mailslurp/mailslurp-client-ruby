# MailSlurpClient::ApiUserControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_smtp_password**](ApiUserControllerApi#get_smtp_password) | **GET** /user/smtp/password | 
[**get_smtp_username**](ApiUserControllerApi#get_smtp_username) | **GET** /user/smtp/username | 
[**get_user_info**](ApiUserControllerApi#get_user_info) | **GET** /user/info | 



## get_smtp_password

> String get_smtp_password



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
  result = api_instance.get_smtp_password
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ApiUserControllerApi->get_smtp_password: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_smtp_username

> String get_smtp_username



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
  result = api_instance.get_smtp_username
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ApiUserControllerApi->get_smtp_username: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
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

