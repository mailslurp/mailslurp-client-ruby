# MailSlurpClient::DomainNameRecord

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**record_type** | **String** | Domain Name Server Record Types | [optional] 
**name** | **String** |  | [optional] 
**record_entries** | **Array&lt;String&gt;** |  | [optional] 
**ttl** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DomainNameRecord.new(record_type: null,
                                 name: null,
                                 record_entries: null,
                                 ttl: null)
```


