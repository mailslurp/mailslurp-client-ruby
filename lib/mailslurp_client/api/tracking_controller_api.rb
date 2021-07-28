=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class TrackingControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create tracking pixel
    # Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.
    # @param create_tracking_pixel_options [CreateTrackingPixelOptions] createTrackingPixelOptions
    # @param [Hash] opts the optional parameters
    # @return [TrackingPixelDto]
    def create_tracking_pixel(create_tracking_pixel_options, opts = {})
      data, _status_code, _headers = create_tracking_pixel_with_http_info(create_tracking_pixel_options, opts)
      data
    end

    # Create tracking pixel
    # Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.
    # @param create_tracking_pixel_options [CreateTrackingPixelOptions] createTrackingPixelOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(TrackingPixelDto, Integer, Hash)>] TrackingPixelDto data, response status code and response headers
    def create_tracking_pixel_with_http_info(create_tracking_pixel_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrackingControllerApi.create_tracking_pixel ...'
      end
      # verify the required parameter 'create_tracking_pixel_options' is set
      if @api_client.config.client_side_validation && create_tracking_pixel_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_tracking_pixel_options' when calling TrackingControllerApi.create_tracking_pixel"
      end
      # resource path
      local_var_path = '/tracking/pixels'

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
      post_body = opts[:body] || @api_client.object_to_http_body(create_tracking_pixel_options) 

      # return_type
      return_type = opts[:return_type] || 'TrackingPixelDto' 

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
        @api_client.config.logger.debug "API called: TrackingControllerApi#create_tracking_pixel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get tracking pixels
    # List tracking pixels in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageTrackingPixelProjection]
    def get_all_tracking_pixels(opts = {})
      data, _status_code, _headers = get_all_tracking_pixels_with_http_info(opts)
      data
    end

    # Get tracking pixels
    # List tracking pixels in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageTrackingPixelProjection, Integer, Hash)>] PageTrackingPixelProjection data, response status code and response headers
    def get_all_tracking_pixels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrackingControllerApi.get_all_tracking_pixels ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tracking/pixels'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'searchFilter'] = opts[:'search_filter'] if !opts[:'search_filter'].nil?
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
      return_type = opts[:return_type] || 'PageTrackingPixelProjection' 

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
        @api_client.config.logger.debug "API called: TrackingControllerApi#get_all_tracking_pixels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get pixel
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [TrackingPixelDto]
    def get_tracking_pixel(id, opts = {})
      data, _status_code, _headers = get_tracking_pixel_with_http_info(id, opts)
      data
    end

    # Get pixel
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [Array<(TrackingPixelDto, Integer, Hash)>] TrackingPixelDto data, response status code and response headers
    def get_tracking_pixel_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrackingControllerApi.get_tracking_pixel ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TrackingControllerApi.get_tracking_pixel"
      end
      # resource path
      local_var_path = '/tracking/pixels/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'TrackingPixelDto' 

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
        @api_client.config.logger.debug "API called: TrackingControllerApi#get_tracking_pixel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
