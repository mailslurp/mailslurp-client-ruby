# MailSlurpClient::MailServerControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describe_mail_server_domain**](MailServerControllerApi.md#describe_mail_server_domain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**get_dns_lookup**](MailServerControllerApi.md#get_dns_lookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
[**get_ip_address**](MailServerControllerApi.md#get_ip_address) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
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


## get_dns_lookup

> DNSLookupResults get_dns_lookup(dns_lookup_options)

Lookup DNS records for a domain

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
dns_lookup_options = MailSlurpClient::DNSLookupOptions.new # DNSLookupOptions | dnsLookupOptions

begin
  #Lookup DNS records for a domain
  result = api_instance.get_dns_lookup(dns_lookup_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling MailServerControllerApi->get_dns_lookup: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dns_lookup_options** | [**DNSLookupOptions**](DNSLookupOptions.md)| dnsLookupOptions | 

### Return type

[**DNSLookupResults**](DNSLookupResults.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_ip_address

> IPAddressResult get_ip_address(name)

Get IP address for a domain

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
name = 'name_example' # String | name

begin
  #Get IP address for a domain
  result = api_instance.get_ip_address(name)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling MailServerControllerApi->get_ip_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name | 

### Return type

[**IPAddressResult**](IPAddressResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
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

