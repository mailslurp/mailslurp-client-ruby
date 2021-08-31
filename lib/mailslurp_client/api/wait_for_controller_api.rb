=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class WaitForControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Wait for an email to match the provided filter conditions such as subject contains keyword.
    # Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
    # @param [Hash] opts the optional parameters
    # @option opts [WaitForConditions] :wait_for_conditions Conditions to apply to emails that you are waiting for
    # @return [Array<EmailPreview>]
    def wait_for(opts = {})
      data, _status_code, _headers = wait_for_with_http_info(opts)
      data
    end

    # Wait for an email to match the provided filter conditions such as subject contains keyword.
    # Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
    # @param [Hash] opts the optional parameters
    # @option opts [WaitForConditions] :wait_for_conditions Conditions to apply to emails that you are waiting for
    # @return [Array<(Array<EmailPreview>, Integer, Hash)>] Array<EmailPreview> data, response status code and response headers
    def wait_for_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WaitForControllerApi.wait_for ...'
      end
      # resource path
      local_var_path = '/waitFor'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'wait_for_conditions']) 

      # return_type
      return_type = opts[:return_type] || 'Array<EmailPreview>' 

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
        @api_client.config.logger.debug "API called: WaitForControllerApi#wait_for\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
    # If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Number of emails to wait for. Must be greater that 1
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox we are fetching emails from
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait
    # @option opts [Boolean] :unread_only Optional filter for unread only (default to false)
    # @return [Array<EmailPreview>]
    def wait_for_email_count(opts = {})
      data, _status_code, _headers = wait_for_email_count_with_http_info(opts)
      data
    end

    # Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
    # If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Number of emails to wait for. Must be greater that 1
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox we are fetching emails from
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait
    # @option opts [Boolean] :unread_only Optional filter for unread only
    # @return [Array<(Array<EmailPreview>, Integer, Hash)>] Array<EmailPreview> data, response status code and response headers
    def wait_for_email_count_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WaitForControllerApi.wait_for_email_count ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/waitForEmailCount'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'delay'] = opts[:'delay'] if !opts[:'delay'].nil?
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?
      query_params[:'unreadOnly'] = opts[:'unread_only'] if !opts[:'unread_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<EmailPreview>' 

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
        @api_client.config.logger.debug "API called: WaitForControllerApi#wait_for_email_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch inbox's latest email or if empty wait for an email to arrive
    # Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox we are fetching emails from
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait
    # @option opts [Boolean] :unread_only Optional filter for unread only. (default to false)
    # @return [Email]
    def wait_for_latest_email(opts = {})
      data, _status_code, _headers = wait_for_latest_email_with_http_info(opts)
      data
    end

    # Fetch inbox&#39;s latest email or if empty wait for an email to arrive
    # Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set &#x60;unreadOnly&#x3D;true&#x60; or see the other receive methods such as &#x60;waitForNthEmail&#x60; or &#x60;waitForEmailCount&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox we are fetching emails from
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait
    # @option opts [Boolean] :unread_only Optional filter for unread only.
    # @return [Array<(Email, Integer, Hash)>] Email data, response status code and response headers
    def wait_for_latest_email_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WaitForControllerApi.wait_for_latest_email ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/waitForLatestEmail'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'delay'] = opts[:'delay'] if !opts[:'delay'].nil?
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?
      query_params[:'unreadOnly'] = opts[:'unread_only'] if !opts[:'unread_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Email' 

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
        @api_client.config.logger.debug "API called: WaitForControllerApi#wait_for_latest_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Wait or return list of emails that match simple matching patterns
    # Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
    # @param match_options [MatchOptions] matchOptions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Number of emails to wait for. Must be greater or equal to 1
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox we are fetching emails from
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait
    # @option opts [Boolean] :unread_only Optional filter for unread only (default to false)
    # @return [Array<EmailPreview>]
    def wait_for_matching_emails(match_options, opts = {})
      data, _status_code, _headers = wait_for_matching_emails_with_http_info(match_options, opts)
      data
    end

    # Wait or return list of emails that match simple matching patterns
    # Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the &#x60;MatchOptions&#x60; object for options. An example payload is &#x60;{ matches: [{field: &#39;SUBJECT&#39;,should:&#39;CONTAIN&#39;,value:&#39;needle&#39;}] }&#x60;. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController &#x60;getEmailContentMatch&#x60; method.
    # @param match_options [MatchOptions] matchOptions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Number of emails to wait for. Must be greater or equal to 1
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox we are fetching emails from
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait
    # @option opts [Boolean] :unread_only Optional filter for unread only
    # @return [Array<(Array<EmailPreview>, Integer, Hash)>] Array<EmailPreview> data, response status code and response headers
    def wait_for_matching_emails_with_http_info(match_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WaitForControllerApi.wait_for_matching_emails ...'
      end
      # verify the required parameter 'match_options' is set
      if @api_client.config.client_side_validation && match_options.nil?
        fail ArgumentError, "Missing the required parameter 'match_options' when calling WaitForControllerApi.wait_for_matching_emails"
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/waitForMatchingEmails'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'delay'] = opts[:'delay'] if !opts[:'delay'].nil?
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?
      query_params[:'unreadOnly'] = opts[:'unread_only'] if !opts[:'unread_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(match_options) 

      # return_type
      return_type = opts[:return_type] || 'Array<EmailPreview>' 

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
        @api_client.config.logger.debug "API called: WaitForControllerApi#wait_for_matching_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Wait for or return the first email that matches provided MatchOptions array
    # Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
    # @param match_options [MatchOptions] matchOptions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox we are matching an email for
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait
    # @option opts [Boolean] :unread_only Optional filter for unread only (default to false)
    # @return [Email]
    def wait_for_matching_first_email(match_options, opts = {})
      data, _status_code, _headers = wait_for_matching_first_email_with_http_info(match_options, opts)
      data
    end

    # Wait for or return the first email that matches provided MatchOptions array
    # Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the &#x60;MatchOptions&#x60; object for options. An example payload is &#x60;{ matches: [{field: &#39;SUBJECT&#39;,should:&#39;CONTAIN&#39;,value:&#39;needle&#39;}] }&#x60;. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController &#x60;getEmailContentMatch&#x60; method.
    # @param match_options [MatchOptions] matchOptions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox we are matching an email for
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait
    # @option opts [Boolean] :unread_only Optional filter for unread only
    # @return [Array<(Email, Integer, Hash)>] Email data, response status code and response headers
    def wait_for_matching_first_email_with_http_info(match_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WaitForControllerApi.wait_for_matching_first_email ...'
      end
      # verify the required parameter 'match_options' is set
      if @api_client.config.client_side_validation && match_options.nil?
        fail ArgumentError, "Missing the required parameter 'match_options' when calling WaitForControllerApi.wait_for_matching_first_email"
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/waitForMatchingFirstEmail'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'delay'] = opts[:'delay'] if !opts[:'delay'].nil?
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?
      query_params[:'unreadOnly'] = opts[:'unread_only'] if !opts[:'unread_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(match_options) 

      # return_type
      return_type = opts[:return_type] || 'Email' 

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
        @api_client.config.logger.debug "API called: WaitForControllerApi#wait_for_matching_first_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
    # If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox you are fetching emails from
    # @option opts [Integer] :index Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 (default to 0)
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait for the nth email if not already present
    # @option opts [Boolean] :unread_only Optional filter for unread only (default to false)
    # @return [Email]
    def wait_for_nth_email(opts = {})
      data, _status_code, _headers = wait_for_nth_email_with_http_info(opts)
      data
    end

    # Wait for or fetch the email with a given index in the inbox specified. If index doesn&#39;t exist waits for it to exist or timeout to occur.
    # If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delay Max milliseconds delay between calls
    # @option opts [String] :inbox_id Id of the inbox you are fetching emails from
    # @option opts [Integer] :index Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1
    # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
    # @option opts [String] :sort Sort direction
    # @option opts [Integer] :timeout Max milliseconds to wait for the nth email if not already present
    # @option opts [Boolean] :unread_only Optional filter for unread only
    # @return [Array<(Email, Integer, Hash)>] Email data, response status code and response headers
    def wait_for_nth_email_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WaitForControllerApi.wait_for_nth_email ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/waitForNthEmail'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'delay'] = opts[:'delay'] if !opts[:'delay'].nil?
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?
      query_params[:'index'] = opts[:'index'] if !opts[:'index'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?
      query_params[:'unreadOnly'] = opts[:'unread_only'] if !opts[:'unread_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Email' 

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
        @api_client.config.logger.debug "API called: WaitForControllerApi#wait_for_nth_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
