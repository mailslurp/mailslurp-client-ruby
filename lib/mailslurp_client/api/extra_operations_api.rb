=begin
#MailSlurp API

#For documentation see [developer guide](https://www.mailslurp.com/developers). [Create an account](https://app.mailslurp.com) in the MailSlurp Dashboard to [view your API Key](https://app). For all bugs, feature requests, or help please [see support](https://www.mailslurp.com/support/).

OpenAPI spec version: 0.0.1-alpha
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module MailSlurpClient
  class ExtraOperationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Bulk create Inboxes (email addresses)
    # Enterprise Plan Required
    # @param count Number of inboxes to be created in bulk
    # @param [Hash] opts the optional parameters
    # @return [Array<Inbox>]
    def bulk_create_inboxes(count, opts = {})
      data, _status_code, _headers = bulk_create_inboxes_with_http_info(count, opts)
      data
    end

    # Bulk create Inboxes (email addresses)
    # Enterprise Plan Required
    # @param count Number of inboxes to be created in bulk
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Inbox>, Fixnum, Hash)>] Array<Inbox> data, response status code and response headers
    def bulk_create_inboxes_with_http_info(count, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.bulk_create_inboxes ...'
      end
      # verify the required parameter 'count' is set
      if @api_client.config.client_side_validation && count.nil?
        fail ArgumentError, "Missing the required parameter 'count' when calling ExtraOperationsApi.bulk_create_inboxes"
      end
      # resource path
      local_var_path = '/bulk/inboxes'

      # query parameters
      query_params = {}
      query_params[:'count'] = count

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Inbox>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#bulk_create_inboxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk Delete Inboxes
    # Enterprise Plan Required
    # @param request_body ids
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def bulk_delete_inboxes(request_body, opts = {})
      bulk_delete_inboxes_with_http_info(request_body, opts)
      nil
    end

    # Bulk Delete Inboxes
    # Enterprise Plan Required
    # @param request_body ids
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def bulk_delete_inboxes_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.bulk_delete_inboxes ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ExtraOperationsApi.bulk_delete_inboxes"
      end
      # resource path
      local_var_path = '/bulk/inboxes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#bulk_delete_inboxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk Send Emails
    # Enterprise Plan Required
    # @param bulk_send_email_options bulkSendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def bulk_send_emails(bulk_send_email_options, opts = {})
      bulk_send_emails_with_http_info(bulk_send_email_options, opts)
      nil
    end

    # Bulk Send Emails
    # Enterprise Plan Required
    # @param bulk_send_email_options bulkSendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def bulk_send_emails_with_http_info(bulk_send_email_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.bulk_send_emails ...'
      end
      # verify the required parameter 'bulk_send_email_options' is set
      if @api_client.config.client_side_validation && bulk_send_email_options.nil?
        fail ArgumentError, "Missing the required parameter 'bulk_send_email_options' when calling ExtraOperationsApi.bulk_send_emails"
      end
      # resource path
      local_var_path = '/bulk/send'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bulk_send_email_options)
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#bulk_send_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an Inbox (email address)
    # Create a new inbox and ephemeral email address to send and receive from. This is a necessary step before sending or receiving emails. The response contains the inbox's ID and its associated email address. It is recommended that you create a new inbox during each test method so that it is unique and empty
    # @param [Hash] opts the optional parameters
    # @return [Inbox]
    def create_inbox(opts = {})
      data, _status_code, _headers = create_inbox_with_http_info(opts)
      data
    end

    # Create an Inbox (email address)
    # Create a new inbox and ephemeral email address to send and receive from. This is a necessary step before sending or receiving emails. The response contains the inbox&#39;s ID and its associated email address. It is recommended that you create a new inbox during each test method so that it is unique and empty
    # @param [Hash] opts the optional parameters
    # @return [Array<(Inbox, Fixnum, Hash)>] Inbox data, response status code and response headers
    def create_inbox_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.create_inbox ...'
      end
      # resource path
      local_var_path = '/inboxes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Inbox')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#create_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach a WebHook URL to an inbox
    # Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
    # @param inbox_id inboxId
    # @param create_webhook_options webhookOptions
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def create_webhook(inbox_id, create_webhook_options, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(inbox_id, create_webhook_options, opts)
      data
    end

    # Attach a WebHook URL to an inbox
    # Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
    # @param inbox_id inboxId
    # @param create_webhook_options webhookOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def create_webhook_with_http_info(inbox_id, create_webhook_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.create_webhook ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling ExtraOperationsApi.create_webhook"
      end
      # verify the required parameter 'create_webhook_options' is set
      if @api_client.config.client_side_validation && create_webhook_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_webhook_options' when calling ExtraOperationsApi.create_webhook"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}/webhooks'.sub('{' + 'inboxId' + '}', inbox_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_webhook_options)
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Email
    # Deletes an email and removes it from the inbox
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_email(email_id, opts = {})
      delete_email_with_http_info(email_id, opts)
      nil
    end

    # Delete Email
    # Deletes an email and removes it from the inbox
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_email_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.delete_email ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling ExtraOperationsApi.delete_email"
      end
      # resource path
      local_var_path = '/emails/{emailId}'.sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#delete_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Inbox / Email Address
    # Permanently delete an inbox and associated email address
    # @param inbox_id inboxId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_inbox(inbox_id, opts = {})
      delete_inbox_with_http_info(inbox_id, opts)
      nil
    end

    # Delete Inbox / Email Address
    # Permanently delete an inbox and associated email address
    # @param inbox_id inboxId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_inbox_with_http_info(inbox_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.delete_inbox ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling ExtraOperationsApi.delete_inbox"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}'.sub('{' + 'inboxId' + '}', inbox_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#delete_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete and disable a WebHook for an Inbox
    # @param inbox_id inboxId
    # @param webhook_id webhookId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook(inbox_id, webhook_id, opts = {})
      delete_webhook_with_http_info(inbox_id, webhook_id, opts)
      nil
    end

    # Delete and disable a WebHook for an Inbox
    # @param inbox_id inboxId
    # @param webhook_id webhookId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(inbox_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.delete_webhook ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling ExtraOperationsApi.delete_webhook"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling ExtraOperationsApi.delete_webhook"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}/webhooks/{webhookId}'.sub('{' + 'inboxId' + '}', inbox_id.to_s).sub('{' + 'webhookId' + '}', webhook_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get email attachment
    # Returns the specified attachment for a given email as a byte stream (file download). Get the attachmentId from the email response. Requires enterprise account.
    # @param attachment_id attachmentId
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def download_attachment(attachment_id, email_id, opts = {})
      download_attachment_with_http_info(attachment_id, email_id, opts)
      nil
    end

    # Get email attachment
    # Returns the specified attachment for a given email as a byte stream (file download). Get the attachmentId from the email response. Requires enterprise account.
    # @param attachment_id attachmentId
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def download_attachment_with_http_info(attachment_id, email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.download_attachment ...'
      end
      # verify the required parameter 'attachment_id' is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_id' when calling ExtraOperationsApi.download_attachment"
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling ExtraOperationsApi.download_attachment"
      end
      # resource path
      local_var_path = '/emails/{emailId}/attachments/{attachmentId}'.sub('{' + 'attachmentId' + '}', attachment_id.to_s).sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#download_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Email Content
    # Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawMessage endpoint
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Email]
    def get_email(email_id, opts = {})
      data, _status_code, _headers = get_email_with_http_info(email_id, opts)
      data
    end

    # Get Email Content
    # Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawMessage endpoint
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Email, Fixnum, Hash)>] Email data, response status code and response headers
    def get_email_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.get_email ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling ExtraOperationsApi.get_email"
      end
      # resource path
      local_var_path = '/emails/{emailId}'.sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Email')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#get_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Emails in an Inbox / EmailAddress
    # List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
    # @param inbox_id Id of inbox that emails belongs to
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit the result set, ordered by descending received date time
    # @option opts [Integer] :min_count Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
    # @option opts [Integer] :retry_timeout Maximum milliseconds to spend retrying inbox database until minCount emails are returned
    # @option opts [DateTime] :since Exclude emails received before this ISO 8601 date time
    # @return [Array<EmailPreview>]
    def get_emails(inbox_id, opts = {})
      data, _status_code, _headers = get_emails_with_http_info(inbox_id, opts)
      data
    end

    # List Emails in an Inbox / EmailAddress
    # List emails that an inbox has received. Only emails that are sent to the inbox&#39;s email address will appear in the inbox. It may take several seconds for any email you send to an inbox&#39;s email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the &#x60;minCount&#x60; parameter. The server will retry the inbox database until the &#x60;minCount&#x60; is satisfied or the &#x60;retryTimeout&#x60; is reached
    # @param inbox_id Id of inbox that emails belongs to
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit the result set, ordered by descending received date time
    # @option opts [Integer] :min_count Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
    # @option opts [Integer] :retry_timeout Maximum milliseconds to spend retrying inbox database until minCount emails are returned
    # @option opts [DateTime] :since Exclude emails received before this ISO 8601 date time
    # @return [Array<(Array<EmailPreview>, Fixnum, Hash)>] Array<EmailPreview> data, response status code and response headers
    def get_emails_with_http_info(inbox_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.get_emails ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling ExtraOperationsApi.get_emails"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}/emails'.sub('{' + 'inboxId' + '}', inbox_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'minCount'] = opts[:'min_count'] if !opts[:'min_count'].nil?
      query_params[:'retryTimeout'] = opts[:'retry_timeout'] if !opts[:'retry_timeout'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<EmailPreview>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#get_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Inbox / EmailAddress
    # Returns an inbox's properties, including its email address and ID.
    # @param inbox_id inboxId
    # @param [Hash] opts the optional parameters
    # @return [Inbox]
    def get_inbox(inbox_id, opts = {})
      data, _status_code, _headers = get_inbox_with_http_info(inbox_id, opts)
      data
    end

    # Get Inbox / EmailAddress
    # Returns an inbox&#39;s properties, including its email address and ID.
    # @param inbox_id inboxId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Inbox, Fixnum, Hash)>] Inbox data, response status code and response headers
    def get_inbox_with_http_info(inbox_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.get_inbox ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling ExtraOperationsApi.get_inbox"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}'.sub('{' + 'inboxId' + '}', inbox_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Inbox')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#get_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Inboxes / Email Addresses
    # List the inboxes you have created
    # @param [Hash] opts the optional parameters
    # @return [Array<Inbox>]
    def get_inboxes(opts = {})
      data, _status_code, _headers = get_inboxes_with_http_info(opts)
      data
    end

    # List Inboxes / Email Addresses
    # List the inboxes you have created
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Inbox>, Fixnum, Hash)>] Array<Inbox> data, response status code and response headers
    def get_inboxes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.get_inboxes ...'
      end
      # resource path
      local_var_path = '/inboxes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Inbox>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#get_inboxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Raw Email Content
    # Returns a raw, unparsed and unprocessed email
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_raw_email_contents(email_id, opts = {})
      data, _status_code, _headers = get_raw_email_contents_with_http_info(email_id, opts)
      data
    end

    # Get Raw Email Content
    # Returns a raw, unparsed and unprocessed email
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_raw_email_contents_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.get_raw_email_contents ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling ExtraOperationsApi.get_raw_email_contents"
      end
      # resource path
      local_var_path = '/emails/{emailId}/raw'.sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#get_raw_email_contents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all WebHooks for an Inbox
    # @param inbox_id inboxId
    # @param [Hash] opts the optional parameters
    # @return [Array<Webhook>]
    def get_webhooks(inbox_id, opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(inbox_id, opts)
      data
    end

    # Get all WebHooks for an Inbox
    # @param inbox_id inboxId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Webhook>, Fixnum, Hash)>] Array<Webhook> data, response status code and response headers
    def get_webhooks_with_http_info(inbox_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.get_webhooks ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling ExtraOperationsApi.get_webhooks"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}/webhooks'.sub('{' + 'inboxId' + '}', inbox_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Webhook>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Email
    # Send an email from the inbox's email address. Specify the email recipients and contents in the request body. See the `SendEmailOptions` for more information. Note the `inboxId` refers to the inbox's id NOT its email address
    # @param inbox_id inboxId
    # @param send_email_options sendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_email(inbox_id, send_email_options, opts = {})
      send_email_with_http_info(inbox_id, send_email_options, opts)
      nil
    end

    # Send Email
    # Send an email from the inbox&#39;s email address. Specify the email recipients and contents in the request body. See the &#x60;SendEmailOptions&#x60; for more information. Note the &#x60;inboxId&#x60; refers to the inbox&#39;s id NOT its email address
    # @param inbox_id inboxId
    # @param send_email_options sendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_email_with_http_info(inbox_id, send_email_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtraOperationsApi.send_email ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling ExtraOperationsApi.send_email"
      end
      # verify the required parameter 'send_email_options' is set
      if @api_client.config.client_side_validation && send_email_options.nil?
        fail ArgumentError, "Missing the required parameter 'send_email_options' when calling ExtraOperationsApi.send_email"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}'.sub('{' + 'inboxId' + '}', inbox_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(send_email_options)
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtraOperationsApi#send_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
