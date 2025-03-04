=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class InboxForwarderControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an inbox forwarder
    # Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
    # @param create_inbox_forwarder_options [CreateInboxForwarderOptions] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Inbox id to attach forwarder to
    # @return [InboxForwarderDto]
    def create_new_inbox_forwarder(create_inbox_forwarder_options, opts = {})
      data, _status_code, _headers = create_new_inbox_forwarder_with_http_info(create_inbox_forwarder_options, opts)
      data
    end

    # Create an inbox forwarder
    # Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
    # @param create_inbox_forwarder_options [CreateInboxForwarderOptions] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Inbox id to attach forwarder to
    # @return [Array<(InboxForwarderDto, Integer, Hash)>] InboxForwarderDto data, response status code and response headers
    def create_new_inbox_forwarder_with_http_info(create_inbox_forwarder_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.create_new_inbox_forwarder ...'
      end
      # verify the required parameter 'create_inbox_forwarder_options' is set
      if @api_client.config.client_side_validation && create_inbox_forwarder_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_inbox_forwarder_options' when calling InboxForwarderControllerApi.create_new_inbox_forwarder"
      end
      # resource path
      local_var_path = '/forwarders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_inbox_forwarder_options) 

      # return_type
      return_type = opts[:return_type] || 'InboxForwarderDto' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#create_new_inbox_forwarder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an inbox forwarder
    # Delete inbox forwarder
    # @param id [String] ID of inbox forwarder
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_inbox_forwarder(id, opts = {})
      delete_inbox_forwarder_with_http_info(id, opts)
      nil
    end

    # Delete an inbox forwarder
    # Delete inbox forwarder
    # @param id [String] ID of inbox forwarder
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_inbox_forwarder_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.delete_inbox_forwarder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InboxForwarderControllerApi.delete_inbox_forwarder"
      end
      # resource path
      local_var_path = '/forwarders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#delete_inbox_forwarder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete inbox forwarders
    # Delete inbox forwarders. Accepts optional inboxId filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inbox id to attach forwarder to
    # @return [nil]
    def delete_inbox_forwarders(opts = {})
      delete_inbox_forwarders_with_http_info(opts)
      nil
    end

    # Delete inbox forwarders
    # Delete inbox forwarders. Accepts optional inboxId filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inbox id to attach forwarder to
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_inbox_forwarders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.delete_inbox_forwarders ...'
      end
      # resource path
      local_var_path = '/forwarders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#delete_inbox_forwarders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all inbox forwarder events
    # Get all inbox forwarder events
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in inbox forwarder event list pagination (default to 0)
    # @option opts [Integer] :size Optional page size in inbox forwarder event list pagination (default to 20)
    # @option opts [String] :inbox_id Optional inbox ID to filter for
    # @option opts [String] :email_id Optional email ID to filter for
    # @option opts [String] :sent_id Optional sent ID to filter for
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageInboxForwarderEvents]
    def get_all_inbox_forwarder_events(opts = {})
      data, _status_code, _headers = get_all_inbox_forwarder_events_with_http_info(opts)
      data
    end

    # Get all inbox forwarder events
    # Get all inbox forwarder events
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in inbox forwarder event list pagination
    # @option opts [Integer] :size Optional page size in inbox forwarder event list pagination
    # @option opts [String] :inbox_id Optional inbox ID to filter for
    # @option opts [String] :email_id Optional email ID to filter for
    # @option opts [String] :sent_id Optional sent ID to filter for
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageInboxForwarderEvents, Integer, Hash)>] PageInboxForwarderEvents data, response status code and response headers
    def get_all_inbox_forwarder_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.get_all_inbox_forwarder_events ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/forwarders/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?
      query_params[:'emailId'] = opts[:'email_id'] if !opts[:'email_id'].nil?
      query_params[:'sentId'] = opts[:'sent_id'] if !opts[:'sent_id'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageInboxForwarderEvents' 

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
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#get_all_inbox_forwarder_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a forwarder event
    # Get forwarder event
    # @param event_id [String] ID of inbox forwarder event
    # @param [Hash] opts the optional parameters
    # @return [InboxForwarderEventDto]
    def get_forwarder_event(event_id, opts = {})
      data, _status_code, _headers = get_forwarder_event_with_http_info(event_id, opts)
      data
    end

    # Get a forwarder event
    # Get forwarder event
    # @param event_id [String] ID of inbox forwarder event
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxForwarderEventDto, Integer, Hash)>] InboxForwarderEventDto data, response status code and response headers
    def get_forwarder_event_with_http_info(event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.get_forwarder_event ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling InboxForwarderControllerApi.get_forwarder_event"
      end
      # resource path
      local_var_path = '/forwarders/events/{eventId}'.sub('{' + 'eventId' + '}', CGI.escape(event_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InboxForwarderEventDto' 

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
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#get_forwarder_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an inbox forwarder
    # Get inbox forwarder
    # @param id [String] ID of inbox forwarder
    # @param [Hash] opts the optional parameters
    # @return [InboxForwarderDto]
    def get_inbox_forwarder(id, opts = {})
      data, _status_code, _headers = get_inbox_forwarder_with_http_info(id, opts)
      data
    end

    # Get an inbox forwarder
    # Get inbox forwarder
    # @param id [String] ID of inbox forwarder
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxForwarderDto, Integer, Hash)>] InboxForwarderDto data, response status code and response headers
    def get_inbox_forwarder_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.get_inbox_forwarder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InboxForwarderControllerApi.get_inbox_forwarder"
      end
      # resource path
      local_var_path = '/forwarders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InboxForwarderDto' 

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
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#get_inbox_forwarder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an inbox forwarder event
    # Get inbox forwarder event
    # @param id [String] ID of inbox forwarder
    # @param event_id [String] ID of inbox forwarder event
    # @param [Hash] opts the optional parameters
    # @return [InboxForwarderEventDto]
    def get_inbox_forwarder_event(id, event_id, opts = {})
      data, _status_code, _headers = get_inbox_forwarder_event_with_http_info(id, event_id, opts)
      data
    end

    # Get an inbox forwarder event
    # Get inbox forwarder event
    # @param id [String] ID of inbox forwarder
    # @param event_id [String] ID of inbox forwarder event
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxForwarderEventDto, Integer, Hash)>] InboxForwarderEventDto data, response status code and response headers
    def get_inbox_forwarder_event_with_http_info(id, event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.get_inbox_forwarder_event ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InboxForwarderControllerApi.get_inbox_forwarder_event"
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling InboxForwarderControllerApi.get_inbox_forwarder_event"
      end
      # resource path
      local_var_path = '/forwarders/{id}/events/{eventId}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'eventId' + '}', CGI.escape(event_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InboxForwarderEventDto' 

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
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#get_inbox_forwarder_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an inbox forwarder event list
    # Get inbox forwarder events
    # @param id [String] ID of inbox forwarder
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in inbox forwarder event list pagination (default to 0)
    # @option opts [Integer] :size Optional page size in inbox forwarder event list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageInboxForwarderEvents]
    def get_inbox_forwarder_events(id, opts = {})
      data, _status_code, _headers = get_inbox_forwarder_events_with_http_info(id, opts)
      data
    end

    # Get an inbox forwarder event list
    # Get inbox forwarder events
    # @param id [String] ID of inbox forwarder
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in inbox forwarder event list pagination
    # @option opts [Integer] :size Optional page size in inbox forwarder event list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageInboxForwarderEvents, Integer, Hash)>] PageInboxForwarderEvents data, response status code and response headers
    def get_inbox_forwarder_events_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.get_inbox_forwarder_events ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InboxForwarderControllerApi.get_inbox_forwarder_events"
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/forwarders/{id}/events'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageInboxForwarderEvents' 

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
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#get_inbox_forwarder_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List inbox forwarders
    # List all forwarders attached to an inbox
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inbox id to get forwarders from
    # @option opts [Integer] :page Optional page index in inbox forwarder list pagination (default to 0)
    # @option opts [Integer] :size Optional page size in inbox forwarder list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @option opts [String] :search_filter Optional search filter
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @return [PageInboxForwarderDto]
    def get_inbox_forwarders(opts = {})
      data, _status_code, _headers = get_inbox_forwarders_with_http_info(opts)
      data
    end

    # List inbox forwarders
    # List all forwarders attached to an inbox
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inbox id to get forwarders from
    # @option opts [Integer] :page Optional page index in inbox forwarder list pagination
    # @option opts [Integer] :size Optional page size in inbox forwarder list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @option opts [String] :search_filter Optional search filter
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @return [Array<(PageInboxForwarderDto, Integer, Hash)>] PageInboxForwarderDto data, response status code and response headers
    def get_inbox_forwarders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.get_inbox_forwarders ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/forwarders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'searchFilter'] = opts[:'search_filter'] if !opts[:'search_filter'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageInboxForwarderDto' 

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
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#get_inbox_forwarders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test an inbox forwarder
    # Test an inbox forwarder
    # @param id [String] ID of inbox forwarder
    # @param inbox_forwarder_test_options [InboxForwarderTestOptions] 
    # @param [Hash] opts the optional parameters
    # @return [InboxForwarderTestResult]
    def test_inbox_forwarder(id, inbox_forwarder_test_options, opts = {})
      data, _status_code, _headers = test_inbox_forwarder_with_http_info(id, inbox_forwarder_test_options, opts)
      data
    end

    # Test an inbox forwarder
    # Test an inbox forwarder
    # @param id [String] ID of inbox forwarder
    # @param inbox_forwarder_test_options [InboxForwarderTestOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxForwarderTestResult, Integer, Hash)>] InboxForwarderTestResult data, response status code and response headers
    def test_inbox_forwarder_with_http_info(id, inbox_forwarder_test_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.test_inbox_forwarder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InboxForwarderControllerApi.test_inbox_forwarder"
      end
      # verify the required parameter 'inbox_forwarder_test_options' is set
      if @api_client.config.client_side_validation && inbox_forwarder_test_options.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_forwarder_test_options' when calling InboxForwarderControllerApi.test_inbox_forwarder"
      end
      # resource path
      local_var_path = '/forwarders/{id}/test'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inbox_forwarder_test_options) 

      # return_type
      return_type = opts[:return_type] || 'InboxForwarderTestResult' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#test_inbox_forwarder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test inbox forwarders for inbox
    # Test inbox forwarders for inbox
    # @param inbox_id [String] ID of inbox
    # @param inbox_forwarder_test_options [InboxForwarderTestOptions] 
    # @param [Hash] opts the optional parameters
    # @return [InboxForwarderTestResult]
    def test_inbox_forwarders_for_inbox(inbox_id, inbox_forwarder_test_options, opts = {})
      data, _status_code, _headers = test_inbox_forwarders_for_inbox_with_http_info(inbox_id, inbox_forwarder_test_options, opts)
      data
    end

    # Test inbox forwarders for inbox
    # Test inbox forwarders for inbox
    # @param inbox_id [String] ID of inbox
    # @param inbox_forwarder_test_options [InboxForwarderTestOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxForwarderTestResult, Integer, Hash)>] InboxForwarderTestResult data, response status code and response headers
    def test_inbox_forwarders_for_inbox_with_http_info(inbox_id, inbox_forwarder_test_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.test_inbox_forwarders_for_inbox ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling InboxForwarderControllerApi.test_inbox_forwarders_for_inbox"
      end
      # verify the required parameter 'inbox_forwarder_test_options' is set
      if @api_client.config.client_side_validation && inbox_forwarder_test_options.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_forwarder_test_options' when calling InboxForwarderControllerApi.test_inbox_forwarders_for_inbox"
      end
      # resource path
      local_var_path = '/forwarders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = inbox_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inbox_forwarder_test_options) 

      # return_type
      return_type = opts[:return_type] || 'InboxForwarderTestResult' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#test_inbox_forwarders_for_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test new inbox forwarder
    # Test new inbox forwarder
    # @param test_new_inbox_forwarder_options [TestNewInboxForwarderOptions] 
    # @param [Hash] opts the optional parameters
    # @return [InboxForwarderTestResult]
    def test_new_inbox_forwarder(test_new_inbox_forwarder_options, opts = {})
      data, _status_code, _headers = test_new_inbox_forwarder_with_http_info(test_new_inbox_forwarder_options, opts)
      data
    end

    # Test new inbox forwarder
    # Test new inbox forwarder
    # @param test_new_inbox_forwarder_options [TestNewInboxForwarderOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxForwarderTestResult, Integer, Hash)>] InboxForwarderTestResult data, response status code and response headers
    def test_new_inbox_forwarder_with_http_info(test_new_inbox_forwarder_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.test_new_inbox_forwarder ...'
      end
      # verify the required parameter 'test_new_inbox_forwarder_options' is set
      if @api_client.config.client_side_validation && test_new_inbox_forwarder_options.nil?
        fail ArgumentError, "Missing the required parameter 'test_new_inbox_forwarder_options' when calling InboxForwarderControllerApi.test_new_inbox_forwarder"
      end
      # resource path
      local_var_path = '/forwarders'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(test_new_inbox_forwarder_options) 

      # return_type
      return_type = opts[:return_type] || 'InboxForwarderTestResult' 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#test_new_inbox_forwarder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an inbox forwarder
    # Update inbox forwarder
    # @param id [String] ID of inbox forwarder
    # @param create_inbox_forwarder_options [CreateInboxForwarderOptions] 
    # @param [Hash] opts the optional parameters
    # @return [InboxForwarderDto]
    def update_inbox_forwarder(id, create_inbox_forwarder_options, opts = {})
      data, _status_code, _headers = update_inbox_forwarder_with_http_info(id, create_inbox_forwarder_options, opts)
      data
    end

    # Update an inbox forwarder
    # Update inbox forwarder
    # @param id [String] ID of inbox forwarder
    # @param create_inbox_forwarder_options [CreateInboxForwarderOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxForwarderDto, Integer, Hash)>] InboxForwarderDto data, response status code and response headers
    def update_inbox_forwarder_with_http_info(id, create_inbox_forwarder_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxForwarderControllerApi.update_inbox_forwarder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InboxForwarderControllerApi.update_inbox_forwarder"
      end
      # verify the required parameter 'create_inbox_forwarder_options' is set
      if @api_client.config.client_side_validation && create_inbox_forwarder_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_inbox_forwarder_options' when calling InboxForwarderControllerApi.update_inbox_forwarder"
      end
      # resource path
      local_var_path = '/forwarders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_inbox_forwarder_options) 

      # return_type
      return_type = opts[:return_type] || 'InboxForwarderDto' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxForwarderControllerApi#update_inbox_forwarder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
