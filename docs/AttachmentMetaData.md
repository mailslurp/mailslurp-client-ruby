# MailSlurpClient::AttachmentMetaData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of attachment if given | [optional] 
**content_type** | **String** | Content type of attachment such as &#x60;image/png&#x60; | [optional] 
**content_length** | **Integer** | Size of attachment in bytes | [optional] 
**id** | **String** | ID of attachment | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AttachmentMetaData.new(name: null,
                                 content_type: null,
                                 content_length: null,
                                 id: null)
```


