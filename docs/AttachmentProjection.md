# MailSlurpClient::AttachmentProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**content_length** | **Integer** | Content length of attachment in bytes | [optional] 
**content_type** | **String** | Content type of attachment. | [optional] 
**user_id** | **String** |  | [optional] 
**attachment_id** | **String** | Attachment ID | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AttachmentProjection.new(name: null,
                                 content_length: null,
                                 content_type: image/png,
                                 user_id: null,
                                 attachment_id: null,
                                 created_at: null,
                                 updated_at: null)
```


