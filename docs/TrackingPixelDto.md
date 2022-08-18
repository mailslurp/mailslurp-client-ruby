# MailSlurpClient::TrackingPixelDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**seen** | **Boolean** |  | 
**recipient** | **String** |  | [optional] 
**html** | **String** |  | 
**url** | **String** |  | 
**inbox_id** | **String** |  | [optional] 
**sent_email_id** | **String** |  | [optional] 
**seen_at** | **DateTime** |  | [optional] 
**created_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::TrackingPixelDto.new(id: null,
                                 seen: null,
                                 recipient: null,
                                 html: null,
                                 url: null,
                                 inbox_id: null,
                                 sent_email_id: null,
                                 seen_at: null,
                                 created_at: null)
```


