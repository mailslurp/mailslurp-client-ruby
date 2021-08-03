# MailSlurpClient::TrackingPixelDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** |  | 
**html** | **String** |  | 
**id** | **String** |  | 
**inbox_id** | **String** |  | [optional] 
**recipient** | **String** |  | [optional] 
**seen** | **Boolean** |  | 
**seen_at** | **DateTime** |  | [optional] 
**sent_email_id** | **String** |  | [optional] 
**url** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::TrackingPixelDto.new(created_at: null,
                                 html: null,
                                 id: null,
                                 inbox_id: null,
                                 recipient: null,
                                 seen: null,
                                 seen_at: null,
                                 sent_email_id: null,
                                 url: null)
```


