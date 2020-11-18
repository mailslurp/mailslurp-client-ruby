# MailSlurpClient::MailServerControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describe_mail_server_domain**](MailServerControllerApi.md#describe_mail_server_domain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**verify_email_address**](MailServerControllerApi.md#verify_email_address) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.



## describe_mail_server_domain

> DescribeMailServerDomainResult describe_mail_server_domain(describe_options)

Get DNS Mail Server records for a domain

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

api_instance = MailSlurpClient::MailServerControllerApi.new
describe_options = MailSlurpClient::DescribeDomainOptions.new # DescribeDomainOptions | describeOptions

begin
  #Get DNS Mail Server records for a domain
  result = api_instance.describe_mail_server_domain(describe_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling MailServerControllerApi->describe_mail_server_domain: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **describe_options** | [**DescribeDomainOptions**](DescribeDomainOptions.md)| describeOptions | 

### Return type

[**DescribeMailServerDomainResult**](DescribeMailServerDomainResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_email_address

> EmailVerificationResult verify_email_address(verify_options)

Verify the existence of an email address at a given mail server.

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

api_instance = MailSlurpClient::MailServerControllerApi.new
verify_options = MailSlurpClient::VerifyEmailAddressOptions.new # VerifyEmailAddressOptions | verifyOptions

begin
  #Verify the existence of an email address at a given mail server.
  result = api_instance.verify_email_address(verify_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling MailServerControllerApi->verify_email_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_options** | [**VerifyEmailAddressOptions**](VerifyEmailAddressOptions.md)| verifyOptions | 

### Return type

[**EmailVerificationResult**](EmailVerificationResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

