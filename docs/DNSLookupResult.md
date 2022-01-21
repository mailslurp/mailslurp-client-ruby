# MailSlurpClient::DNSLookupResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**record_type** | **String** | Domain Name Server Record Types | 
**ttl** | **Integer** |  | 
**record_entries** | **Array&lt;String&gt;** |  | 
**name** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DNSLookupResult.new(record_type: null,
                                 ttl: null,
                                 record_entries: null,
                                 name: null)
```


