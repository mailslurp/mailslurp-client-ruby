# MailSlurpClient::TrackingControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tracking_pixel**](TrackingControllerApi#create_tracking_pixel) | **POST** /tracking/pixels | Create tracking pixel
[**get_all_tracking_pixels**](TrackingControllerApi#get_all_tracking_pixels) | **GET** /tracking/pixels | Get tracking pixels
[**get_tracking_pixel**](TrackingControllerApi#get_tracking_pixel) | **GET** /tracking/pixels/{id} | Get pixel



## create_tracking_pixel

> TrackingPixelDto create_tracking_pixel(create_tracking_pixel_options)

Create tracking pixel

Create a tracking pixel

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

api_instance = MailSlurpClient::TrackingControllerApi.new
create_tracking_pixel_options = MailSlurpClient::CreateTrackingPixelOptions.new # CreateTrackingPixelOptions | createTrackingPixelOptions

begin
  #Create tracking pixel
  result = api_instance.create_tracking_pixel(create_tracking_pixel_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TrackingControllerApi->create_tracking_pixel: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_tracking_pixel_options** | [**CreateTrackingPixelOptions**](CreateTrackingPixelOptions)| createTrackingPixelOptions | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_tracking_pixels

> PageTrackingPixelProjection get_all_tracking_pixels(opts)

Get tracking pixels

List tracking pixels in paginated form

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

api_instance = MailSlurpClient::TrackingControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get tracking pixels
  result = api_instance.get_all_tracking_pixels(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TrackingControllerApi->get_all_tracking_pixels: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_pixel

> TrackingPixelDto get_tracking_pixel(id)

Get pixel

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

api_instance = MailSlurpClient::TrackingControllerApi.new
id = 'id_example' # String | id

begin
  #Get pixel
  result = api_instance.get_tracking_pixel(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TrackingControllerApi->get_tracking_pixel: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| id | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

