# MailSlurpClient::TrackingControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tracking_pixel**](TrackingControllerApi#create_tracking_pixel) | **POST** /tracking/pixels | Create tracking pixel
[**get_all_tracking_pixels**](TrackingControllerApi#get_all_tracking_pixels) | **GET** /tracking/pixels | Get tracking pixels
[**get_tracking_pixel**](TrackingControllerApi#get_tracking_pixel) | **GET** /tracking/pixels/{id} | Get pixel



## create_tracking_pixel

> TrackingPixelDto create_tracking_pixel(create_tracking_pixel_options)

Create tracking pixel

Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.

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
create_tracking_pixel_options = MailSlurpClient::CreateTrackingPixelOptions.new # CreateTrackingPixelOptions | 

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
 **create_tracking_pixel_options** | [**CreateTrackingPixelOptions**](CreateTrackingPixelOptions)|  | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


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
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
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
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
id = 'id_example' # String | 

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
 **id** | [**String**]()|  | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

