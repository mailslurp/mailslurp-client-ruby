# MailSlurpClient::AttachmentMetaData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content_length** | **Integer** | Size of attachment in bytes | [optional] 
**content_type** | **String** | Content type of attachment such as &#x60;image/png&#x60; | [optional] 
**id** | **String** | ID of attachment | [optional] 
**name** | **String** | Name of attachment if given | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AttachmentMetaData.new(content_length: null,
                                 content_type: null,
                                 id: null,
                                 name: null)
```


