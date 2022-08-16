# MailSlurpClient::BounceProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**sender** | **String** |  | 
**subject** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**bounce_type** | **String** |  | [optional] 
**bounce_mta** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::BounceProjection.new(id: null,
                                 sender: null,
                                 subject: null,
                                 created_at: null,
                                 bounce_type: null,
                                 bounce_mta: null)
```


