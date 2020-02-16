# MailSlurpClient::GroupControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contacts_to_group**](GroupControllerApi.md#add_contacts_to_group) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
[**create_group**](GroupControllerApi.md#create_group) | **POST** /groups | Create a group
[**delete_group**](GroupControllerApi.md#delete_group) | **DELETE** /groups/{groupId} | Delete group
[**get_all_groups**](GroupControllerApi.md#get_all_groups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
[**get_group**](GroupControllerApi.md#get_group) | **GET** /groups/{groupId} | Get group
[**get_group_with_contacts**](GroupControllerApi.md#get_group_with_contacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
[**get_groups**](GroupControllerApi.md#get_groups) | **GET** /groups | Get all groups
[**remove_contacts_from_group**](GroupControllerApi.md#remove_contacts_from_group) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group



## add_contacts_to_group

> GroupContactsDto add_contacts_to_group(group_id, update_group_contacts_option)

Add contacts to a group

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

api_instance = MailSlurpClient::GroupControllerApi.new
group_id = 'group_id_example' # String | groupId
update_group_contacts_option = MailSlurpClient::UpdateGroupContacts.new # UpdateGroupContacts | updateGroupContactsOption

begin
  #Add contacts to a group
  result = api_instance.add_contacts_to_group(group_id, update_group_contacts_option)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling GroupControllerApi->add_contacts_to_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**String**](.md)| groupId | 
 **update_group_contacts_option** | [**UpdateGroupContacts**](UpdateGroupContacts.md)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_group

> GroupDto create_group(create_group_options)

Create a group

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

api_instance = MailSlurpClient::GroupControllerApi.new
create_group_options = MailSlurpClient::CreateGroupOptions.new # CreateGroupOptions | createGroupOptions

begin
  #Create a group
  result = api_instance.create_group(create_group_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling GroupControllerApi->create_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_group_options** | [**CreateGroupOptions**](CreateGroupOptions.md)| createGroupOptions | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> delete_group(group_id)

Delete group

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

api_instance = MailSlurpClient::GroupControllerApi.new
group_id = 'group_id_example' # String | groupId

begin
  #Delete group
  api_instance.delete_group(group_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling GroupControllerApi->delete_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**String**](.md)| groupId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_groups

> PageGroupProjection get_all_groups(opts)

Get all Contact Groups in paginated format

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

api_instance = MailSlurpClient::GroupControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in inbox list pagination
  size: 20, # Integer | Optional page size in inbox list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get all Contact Groups in paginated format
  result = api_instance.get_all_groups(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling GroupControllerApi->get_all_groups: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageGroupProjection**](PageGroupProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group

> GroupDto get_group(group_id)

Get group

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

api_instance = MailSlurpClient::GroupControllerApi.new
group_id = 'group_id_example' # String | groupId

begin
  #Get group
  result = api_instance.get_group(group_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling GroupControllerApi->get_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**String**](.md)| groupId | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_with_contacts

> GroupContactsDto get_group_with_contacts(group_id)

Get group and contacts belonging to it

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

api_instance = MailSlurpClient::GroupControllerApi.new
group_id = 'group_id_example' # String | groupId

begin
  #Get group and contacts belonging to it
  result = api_instance.get_group_with_contacts(group_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling GroupControllerApi->get_group_with_contacts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**String**](.md)| groupId | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups

> Array&lt;GroupProjection&gt; get_groups

Get all groups

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

api_instance = MailSlurpClient::GroupControllerApi.new

begin
  #Get all groups
  result = api_instance.get_groups
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling GroupControllerApi->get_groups: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;GroupProjection&gt;**](GroupProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_contacts_from_group

> GroupContactsDto remove_contacts_from_group(group_id, update_group_contacts_option)

Remove contacts from a group

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

api_instance = MailSlurpClient::GroupControllerApi.new
group_id = 'group_id_example' # String | groupId
update_group_contacts_option = MailSlurpClient::UpdateGroupContacts.new # UpdateGroupContacts | updateGroupContactsOption

begin
  #Remove contacts from a group
  result = api_instance.remove_contacts_from_group(group_id, update_group_contacts_option)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling GroupControllerApi->remove_contacts_from_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**String**](.md)| groupId | 
 **update_group_contacts_option** | [**UpdateGroupContacts**](UpdateGroupContacts.md)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

