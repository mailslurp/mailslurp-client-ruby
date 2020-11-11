# MailSlurpClient::DomainControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_domain**](DomainControllerApi.md#create_domain) | **POST** /domains | Create Domain
[**delete_domain**](DomainControllerApi.md#delete_domain) | **DELETE** /domains/{id} | Delete a domain
[**get_domain**](DomainControllerApi.md#get_domain) | **GET** /domains/{id} | Get a domain
[**get_domains**](DomainControllerApi.md#get_domains) | **GET** /domains | Get domains



## create_domain

> DomainDto create_domain(domain_options)

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

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

api_instance = MailSlurpClient::DomainControllerApi.new
domain_options = MailSlurpClient::CreateDomainOptions.new # CreateDomainOptions | domainOptions

begin
  #Create Domain
  result = api_instance.create_domain(domain_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling DomainControllerApi->create_domain: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_options** | [**CreateDomainOptions**](CreateDomainOptions.md)| domainOptions | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_domain

> delete_domain(id)

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

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

api_instance = MailSlurpClient::DomainControllerApi.new
id = 'id_example' # String | id

begin
  #Delete a domain
  api_instance.delete_domain(id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling DomainControllerApi->delete_domain: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_domain

> DomainDto get_domain(id)

Get a domain

Returns domain verification status and tokens for a given domain

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

api_instance = MailSlurpClient::DomainControllerApi.new
id = 'id_example' # String | id

begin
  #Get a domain
  result = api_instance.get_domain(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling DomainControllerApi->get_domain: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domains

> Array&lt;DomainPreview&gt; get_domains

Get domains

List all custom domains you have created

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

api_instance = MailSlurpClient::DomainControllerApi.new

begin
  #Get domains
  result = api_instance.get_domains
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling DomainControllerApi->get_domains: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DomainPreview&gt;**](DomainPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

