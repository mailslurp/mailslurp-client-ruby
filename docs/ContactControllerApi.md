# MailSlurpClient::ContactControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactControllerApi#create_contact) | **POST** /contacts | Create a contact
[**delete_contact**](ContactControllerApi#delete_contact) | **DELETE** /contacts/{contactId} | Delete contact
[**get_all_contacts**](ContactControllerApi#get_all_contacts) | **GET** /contacts/paginated | Get all contacts
[**get_contact**](ContactControllerApi#get_contact) | **GET** /contacts/{contactId} | Get contact
[**get_contact_v_card**](ContactControllerApi#get_contact_v_card) | **GET** /contacts/{contactId}/download | Get contact vCard vcf file
[**get_contacts**](ContactControllerApi#get_contacts) | **GET** /contacts | Get all contacts



## create_contact

> ContactDto create_contact(create_contact_options)

Create a contact

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

api_instance = MailSlurpClient::ContactControllerApi.new
create_contact_options = MailSlurpClient::CreateContactOptions.new # CreateContactOptions | 

begin
  #Create a contact
  result = api_instance.create_contact(create_contact_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ContactControllerApi->create_contact: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_contact_options** | [**CreateContactOptions**](CreateContactOptions)|  | 

### Return type

[**ContactDto**](ContactDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## delete_contact

> delete_contact(contact_id)

Delete contact

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

api_instance = MailSlurpClient::ContactControllerApi.new
contact_id = 'contact_id_example' # String | 

begin
  #Delete contact
  api_instance.delete_contact(contact_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ContactControllerApi->delete_contact: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_contacts

> PageContactProjection get_all_contacts(opts)

Get all contacts

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

api_instance = MailSlurpClient::ContactControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #Get all contacts
  result = api_instance.get_all_contacts(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ContactControllerApi->get_all_contacts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageContactProjection**](PageContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_contact

> ContactDto get_contact(contact_id)

Get contact

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

api_instance = MailSlurpClient::ContactControllerApi.new
contact_id = 'contact_id_example' # String | 

begin
  #Get contact
  result = api_instance.get_contact(contact_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ContactControllerApi->get_contact: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | [**String**]()|  | 

### Return type

[**ContactDto**](ContactDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_contact_v_card

> Array&lt;String&gt; get_contact_v_card(contact_id)

Get contact vCard vcf file

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

api_instance = MailSlurpClient::ContactControllerApi.new
contact_id = 'contact_id_example' # String | 

begin
  #Get contact vCard vcf file
  result = api_instance.get_contact_v_card(contact_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ContactControllerApi->get_contact_v_card: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | [**String**]()|  | 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_contacts

> Array&lt;ContactProjection&gt; get_contacts

Get all contacts

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

api_instance = MailSlurpClient::ContactControllerApi.new

begin
  #Get all contacts
  result = api_instance.get_contacts
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ContactControllerApi->get_contacts: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ContactProjection&gt;**](ContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

