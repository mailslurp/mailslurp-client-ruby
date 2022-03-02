# MailSlurpClient::MailServerControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describe_mail_server_domain**](MailServerControllerApi#describe_mail_server_domain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**get_dns_lookup**](MailServerControllerApi#get_dns_lookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
[**get_ip_address**](MailServerControllerApi#get_ip_address) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
[**verify_email_address**](MailServerControllerApi#verify_email_address) | **POST** /mail-server/verify/email-address | Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.



## describe_mail_server_domain

> DescribeMailServerDomainResult describe_mail_server_domain(describe_domain_options)

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
describe_domain_options = MailSlurpClient::DescribeDomainOptions.new # DescribeDomainOptions | 

begin
  #Get DNS Mail Server records for a domain
  result = api_instance.describe_mail_server_domain(describe_domain_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling MailServerControllerApi->describe_mail_server_domain: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **describe_domain_options** | [**DescribeDomainOptions**](DescribeDomainOptions)|  | 

### Return type

[**DescribeMailServerDomainResult**](DescribeMailServerDomainResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


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
dns_lookup_options = MailSlurpClient::DNSLookupOptions.new # DNSLookupOptions | 

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
 **dns_lookup_options** | [**DNSLookupOptions**](DNSLookupOptions)|  | 

### Return type

[**DNSLookupResults**](DNSLookupResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


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
name = 'name_example' # String | 

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
 **name** | **String**|  | 

### Return type

[**IPAddressResult**](IPAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## verify_email_address

> EmailVerificationResult verify_email_address(verify_email_address_options)

Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.

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
verify_email_address_options = MailSlurpClient::VerifyEmailAddressOptions.new # VerifyEmailAddressOptions | 

begin
  #Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.
  result = api_instance.verify_email_address(verify_email_address_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling MailServerControllerApi->verify_email_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_email_address_options** | [**VerifyEmailAddressOptions**](VerifyEmailAddressOptions)|  | 

### Return type

[**EmailVerificationResult**](EmailVerificationResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

