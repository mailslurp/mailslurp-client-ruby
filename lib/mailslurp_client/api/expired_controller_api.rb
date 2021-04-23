=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class ExpiredControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get default expiration settings
    # Return default times used for inbox expiration
    # @param [Hash] opts the optional parameters
    # @return [ExpirationDefaults]
    def get_expiration_defaults(opts = {})
      data, _status_code, _headers = get_expiration_defaults_with_http_info(opts)
      data
    end

    # Get default expiration settings
    # Return default times used for inbox expiration
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpirationDefaults, Integer, Hash)>] ExpirationDefaults data, response status code and response headers
    def get_expiration_defaults_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpiredControllerApi.get_expiration_defaults ...'
      end
      # resource path
      local_var_path = '/expired/defaults'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ExpirationDefaults' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpiredControllerApi#get_expiration_defaults\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get expired inbox record for a previously existing inbox
    # Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
    # @param inbox_id [String] ID of inbox you want to retrieve (not the inbox ID)
    # @param [Hash] opts the optional parameters
    # @return [ExpiredInboxDto]
    def get_expired_inbox_by_inbox_id(inbox_id, opts = {})
      data, _status_code, _headers = get_expired_inbox_by_inbox_id_with_http_info(inbox_id, opts)
      data
    end

    # Get expired inbox record for a previously existing inbox
    # Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
    # @param inbox_id [String] ID of inbox you want to retrieve (not the inbox ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpiredInboxDto, Integer, Hash)>] ExpiredInboxDto data, response status code and response headers
    def get_expired_inbox_by_inbox_id_with_http_info(inbox_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpiredControllerApi.get_expired_inbox_by_inbox_id ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling ExpiredControllerApi.get_expired_inbox_by_inbox_id"
      end
      # resource path
      local_var_path = '/expired/inbox/{inboxId}'.sub('{' + 'inboxId' + '}', CGI.escape(inbox_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ExpiredInboxDto' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpiredControllerApi#get_expired_inbox_by_inbox_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an expired inbox record
    # Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
    # @param expired_id [String] ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId)
    # @param [Hash] opts the optional parameters
    # @return [ExpiredInboxDto]
    def get_expired_inbox_record(expired_id, opts = {})
      data, _status_code, _headers = get_expired_inbox_record_with_http_info(expired_id, opts)
      data
    end

    # Get an expired inbox record
    # Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
    # @param expired_id [String] ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId)
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpiredInboxDto, Integer, Hash)>] ExpiredInboxDto data, response status code and response headers
    def get_expired_inbox_record_with_http_info(expired_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpiredControllerApi.get_expired_inbox_record ...'
      end
      # verify the required parameter 'expired_id' is set
      if @api_client.config.client_side_validation && expired_id.nil?
        fail ArgumentError, "Missing the required parameter 'expired_id' when calling ExpiredControllerApi.get_expired_inbox_record"
      end
      # resource path
      local_var_path = '/expired/{expiredId}'.sub('{' + 'expiredId' + '}', CGI.escape(expired_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ExpiredInboxDto' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpiredControllerApi#get_expired_inbox_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List records of expired inboxes
    # Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in inbox sent email list pagination (default to 0)
    # @option opts [Integer] :size Optional page size in inbox sent email list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageExpiredInboxRecordProjection]
    def get_expired_inboxes(opts = {})
      data, _status_code, _headers = get_expired_inboxes_with_http_info(opts)
      data
    end

    # List records of expired inboxes
    # Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in inbox sent email list pagination
    # @option opts [Integer] :size Optional page size in inbox sent email list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageExpiredInboxRecordProjection, Integer, Hash)>] PageExpiredInboxRecordProjection data, response status code and response headers
    def get_expired_inboxes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpiredControllerApi.get_expired_inboxes ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/expired'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageExpiredInboxRecordProjection' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpiredControllerApi#get_expired_inboxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
