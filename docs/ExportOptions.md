# MailSlurpClient::ExportOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**output_format** | **String** |  | 
**exclude_previously_exported** | **Boolean** |  | [optional] 
**created_earliest_time** | **DateTime** |  | [optional] 
**created_oldest_time** | **DateTime** |  | [optional] 
**filter** | **String** |  | [optional] 
**list_separator_token** | [**Object**]() |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ExportOptions.new(output_format: null,
                                 exclude_previously_exported: null,
                                 created_earliest_time: null,
                                 created_oldest_time: null,
                                 filter: null,
                                 list_separator_token: null)
```


