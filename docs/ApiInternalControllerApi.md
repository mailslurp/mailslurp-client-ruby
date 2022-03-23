# MailSlurpClient::ApiInternalControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_saml_user_or_create**](ApiInternalControllerApi#get_saml_user_or_create) | **POST** /internal/saml/user | 



## get_saml_user_or_create

> UserDto get_saml_user_or_create(key, get_or_create_saml_user_options)



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

api_instance = MailSlurpClient::ApiInternalControllerApi.new
key = 'key_example' # String | 
get_or_create_saml_user_options = MailSlurpClient::GetOrCreateSamlUserOptions.new # GetOrCreateSamlUserOptions | 

begin
  result = api_instance.get_saml_user_or_create(key, get_or_create_saml_user_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ApiInternalControllerApi->get_saml_user_or_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**|  | 
 **get_or_create_saml_user_options** | [**GetOrCreateSamlUserOptions**](GetOrCreateSamlUserOptions)|  | 

### Return type

[**UserDto**](UserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

