# MailSlurpClient::AttachmentMetaData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of attachment if given | 
**content_type** | **String** | Content type of attachment such as &#x60;image/png&#x60; | 
**content_length** | **Integer** | Size of attachment in bytes | 
**id** | **String** | ID of attachment. Can be used to with attachment controller endpoints to download attachment or with sending methods to attach to an email. | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AttachmentMetaData.new(name: null,
                                 content_type: null,
                                 content_length: null,
                                 id: null)
```


