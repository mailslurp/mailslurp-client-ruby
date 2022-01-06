# MailSlurpClient::DomainControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_domain_wildcard_catch_all**](DomainControllerApi#add_domain_wildcard_catch_all) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**create_domain**](DomainControllerApi#create_domain) | **POST** /domains | Create Domain
[**delete_domain**](DomainControllerApi#delete_domain) | **DELETE** /domains/{id} | Delete a domain
[**get_domain**](DomainControllerApi#get_domain) | **GET** /domains/{id} | Get a domain
[**get_domains**](DomainControllerApi#get_domains) | **GET** /domains | Get domains
[**update_domain**](DomainControllerApi#update_domain) | **PUT** /domains/{id} | Update a domain



## add_domain_wildcard_catch_all

> DomainDto add_domain_wildcard_catch_all(id)

Add catch all wild card inbox to domain

Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated

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
id = 'id_example' # String | 

begin
  #Add catch all wild card inbox to domain
  result = api_instance.add_domain_wildcard_catch_all(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling DomainControllerApi->add_domain_wildcard_catch_all: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## create_domain

> DomainDto create_domain(create_domain_options)

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
create_domain_options = MailSlurpClient::CreateDomainOptions.new # CreateDomainOptions | 

begin
  #Create Domain
  result = api_instance.create_domain(create_domain_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling DomainControllerApi->create_domain: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_domain_options** | [**CreateDomainOptions**](CreateDomainOptions)|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## delete_domain

> Array&lt;String&gt; delete_domain(id)

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
id = 'id_example' # String | 

begin
  #Delete a domain
  result = api_instance.delete_domain(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling DomainControllerApi->delete_domain: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
id = 'id_example' # String | 

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
 **id** | [**String**]()|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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

[**Array&lt;DomainPreview&gt;**](DomainPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## update_domain

> DomainDto update_domain(id, update_domain_options)

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

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
id = 'id_example' # String | 
update_domain_options = MailSlurpClient::UpdateDomainOptions.new # UpdateDomainOptions | 

begin
  #Update a domain
  result = api_instance.update_domain(id, update_domain_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling DomainControllerApi->update_domain: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 
 **update_domain_options** | [**UpdateDomainOptions**](UpdateDomainOptions)|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

