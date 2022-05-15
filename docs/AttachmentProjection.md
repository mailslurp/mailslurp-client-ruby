# MailSlurpClient::AttachmentProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**content_length** | **Integer** | Content length of attachment in bytes | [optional] 
**content_type** | **String** | Content type of attachment. | [optional] 
**created_at** | **DateTime** |  | 
**user_id** | **String** |  | 
**attachment_id** | **String** | Attachment ID | 
**updated_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AttachmentProjection.new(name: null,
                                 content_length: null,
                                 content_type: image/png,
                                 created_at: null,
                                 user_id: null,
                                 attachment_id: null,
                                 updated_at: null)
```


