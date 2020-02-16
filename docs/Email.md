# MailSlurpClient::Email

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**analysis** | [**EmailAnalysis**](EmailAnalysis.md) |  | [optional] 
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**body** | **String** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**charset** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**from** | **String** |  | [optional] 
**headers** | **Hash&lt;String, String&gt;** |  | [optional] 
**id** | **String** |  | 
**inbox_id** | **String** |  | 
**is_html** | **Boolean** |  | [optional] 
**raw_url** | **String** |  | [optional] 
**read** | **Boolean** | Has the email been viewed ever | [optional] 
**subject** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 
**updated_at** | **DateTime** |  | 
**user_id** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::Email.new(analysis: null,
                                 attachments: null,
                                 bcc: null,
                                 body: null,
                                 cc: null,
                                 charset: null,
                                 created_at: null,
                                 from: null,
                                 headers: null,
                                 id: null,
                                 inbox_id: null,
                                 is_html: null,
                                 raw_url: null,
                                 read: null,
                                 subject: null,
                                 to: null,
                                 updated_at: null,
                                 user_id: null)
```


