# MailSlurpClient::AttachmentProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**content_length** | **Integer** | Content length of attachment in bytes | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**user_id** | **String** |  | [optional] 
**attachment_id** | **String** | Attachment ID | [optional] 
**created_at** | **DateTime** |  | [optional] 
**content_type** | **String** | Content type of attachment. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AttachmentProjection.new(name: null,
                                 content_length: null,
                                 updated_at: null,
                                 user_id: null,
                                 attachment_id: null,
                                 created_at: null,
                                 content_type: image/png)
```


