# MailSlurpClient::ExportControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_entities**](ExportControllerApi#export_entities) | **GET** /export | Export inboxes link callable via browser
[**get_export_link**](ExportControllerApi#get_export_link) | **POST** /export | Get export link



## export_entities

> Array&lt;String&gt; export_entities(export_type, api_key, output_format, opts)

Export inboxes link callable via browser

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

api_instance = MailSlurpClient::ExportControllerApi.new
export_type = 'export_type_example' # String | 
api_key = 'api_key_example' # String | 
output_format = 'output_format_example' # String | 
opts = {
  filter: 'filter_example', # String | 
  list_separator_token: 'list_separator_token_example', # String | 
  exclude_previously_exported: true, # Boolean | 
  created_earliest_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  created_oldest_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Export inboxes link callable via browser
  result = api_instance.export_entities(export_type, api_key, output_format, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExportControllerApi->export_entities: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_type** | **String**|  | 
 **api_key** | **String**|  | 
 **output_format** | **String**|  | 
 **filter** | **String**|  | [optional] 
 **list_separator_token** | **String**|  | [optional] 
 **exclude_previously_exported** | **Boolean**|  | [optional] 
 **created_earliest_time** | **DateTime**|  | [optional] 
 **created_oldest_time** | **DateTime**|  | [optional] 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_export_link

> ExportLink get_export_link(export_type, export_options, opts)

Get export link

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

api_instance = MailSlurpClient::ExportControllerApi.new
export_type = 'export_type_example' # String | 
export_options = MailSlurpClient::ExportOptions.new # ExportOptions | 
opts = {
  api_key: 'api_key_example' # String | 
}

begin
  #Get export link
  result = api_instance.get_export_link(export_type, export_options, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExportControllerApi->get_export_link: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_type** | **String**|  | 
 **export_options** | [**ExportOptions**](ExportOptions)|  | 
 **api_key** | **String**|  | [optional] 

### Return type

[**ExportLink**](ExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

