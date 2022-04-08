=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MailSlurpClient
  class WebhookResultDto
    attr_accessor :id

    attr_accessor :user_id

    attr_accessor :inbox_id

    attr_accessor :webhook_id

    attr_accessor :webhook_url

    attr_accessor :message_id

    attr_accessor :redrive_id

    attr_accessor :http_method

    attr_accessor :webhook_event

    attr_accessor :response_status

    attr_accessor :response_time_millis

    attr_accessor :response_body_extract

    attr_accessor :result_type

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :seen

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_id' => :'userId',
        :'inbox_id' => :'inboxId',
        :'webhook_id' => :'webhookId',
        :'webhook_url' => :'webhookUrl',
        :'message_id' => :'messageId',
        :'redrive_id' => :'redriveId',
        :'http_method' => :'httpMethod',
        :'webhook_event' => :'webhookEvent',
        :'response_status' => :'responseStatus',
        :'response_time_millis' => :'responseTimeMillis',
        :'response_body_extract' => :'responseBodyExtract',
        :'result_type' => :'resultType',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'seen' => :'seen'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'user_id' => :'String',
        :'inbox_id' => :'String',
        :'webhook_id' => :'String',
        :'webhook_url' => :'String',
        :'message_id' => :'String',
        :'redrive_id' => :'String',
        :'http_method' => :'String',
        :'webhook_event' => :'String',
        :'response_status' => :'Integer',
        :'response_time_millis' => :'Integer',
        :'response_body_extract' => :'String',
        :'result_type' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'seen' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::WebhookResultDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::WebhookResultDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'inbox_id')
        self.inbox_id = attributes[:'inbox_id']
      end

      if attributes.key?(:'webhook_id')
        self.webhook_id = attributes[:'webhook_id']
      end

      if attributes.key?(:'webhook_url')
        self.webhook_url = attributes[:'webhook_url']
      end

      if attributes.key?(:'message_id')
        self.message_id = attributes[:'message_id']
      end

      if attributes.key?(:'redrive_id')
        self.redrive_id = attributes[:'redrive_id']
      end

      if attributes.key?(:'http_method')
        self.http_method = attributes[:'http_method']
      end

      if attributes.key?(:'webhook_event')
        self.webhook_event = attributes[:'webhook_event']
      end

      if attributes.key?(:'response_status')
        self.response_status = attributes[:'response_status']
      end

      if attributes.key?(:'response_time_millis')
        self.response_time_millis = attributes[:'response_time_millis']
      end

      if attributes.key?(:'response_body_extract')
        self.response_body_extract = attributes[:'response_body_extract']
      end

      if attributes.key?(:'result_type')
        self.result_type = attributes[:'result_type']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'seen')
        self.seen = attributes[:'seen']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @webhook_id.nil?
        invalid_properties.push('invalid value for "webhook_id", webhook_id cannot be nil.')
      end

      if @webhook_url.nil?
        invalid_properties.push('invalid value for "webhook_url", webhook_url cannot be nil.')
      end

      if @message_id.nil?
        invalid_properties.push('invalid value for "message_id", message_id cannot be nil.')
      end

      if @http_method.nil?
        invalid_properties.push('invalid value for "http_method", http_method cannot be nil.')
      end

      if @webhook_event.nil?
        invalid_properties.push('invalid value for "webhook_event", webhook_event cannot be nil.')
      end

      if @response_time_millis.nil?
        invalid_properties.push('invalid value for "response_time_millis", response_time_millis cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @user_id.nil?
      return false if @webhook_id.nil?
      return false if @webhook_url.nil?
      return false if @message_id.nil?
      return false if @http_method.nil?
      http_method_validator = EnumAttributeValidator.new('String', ["GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"])
      return false unless http_method_validator.valid?(@http_method)
      return false if @webhook_event.nil?
      webhook_event_validator = EnumAttributeValidator.new('String', ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "BOUNCE", "BOUNCE_RECIPIENT"])
      return false unless webhook_event_validator.valid?(@webhook_event)
      return false if @response_time_millis.nil?
      result_type_validator = EnumAttributeValidator.new('String', ["BAD_RESPONSE", "EXCEPTION", "SUCCESS"])
      return false unless result_type_validator.valid?(@result_type)
      return false if @created_at.nil?
      return false if @updated_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] http_method Object to be assigned
    def http_method=(http_method)
      validator = EnumAttributeValidator.new('String', ["GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"])
      unless validator.valid?(http_method)
        fail ArgumentError, "invalid value for \"http_method\", must be one of #{validator.allowable_values}."
      end
      @http_method = http_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook_event Object to be assigned
    def webhook_event=(webhook_event)
      validator = EnumAttributeValidator.new('String', ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "BOUNCE", "BOUNCE_RECIPIENT"])
      unless validator.valid?(webhook_event)
        fail ArgumentError, "invalid value for \"webhook_event\", must be one of #{validator.allowable_values}."
      end
      @webhook_event = webhook_event
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result_type Object to be assigned
    def result_type=(result_type)
      validator = EnumAttributeValidator.new('String', ["BAD_RESPONSE", "EXCEPTION", "SUCCESS"])
      unless validator.valid?(result_type)
        fail ArgumentError, "invalid value for \"result_type\", must be one of #{validator.allowable_values}."
      end
      @result_type = result_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          inbox_id == o.inbox_id &&
          webhook_id == o.webhook_id &&
          webhook_url == o.webhook_url &&
          message_id == o.message_id &&
          redrive_id == o.redrive_id &&
          http_method == o.http_method &&
          webhook_event == o.webhook_event &&
          response_status == o.response_status &&
          response_time_millis == o.response_time_millis &&
          response_body_extract == o.response_body_extract &&
          result_type == o.result_type &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          seen == o.seen
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, inbox_id, webhook_id, webhook_url, message_id, redrive_id, http_method, webhook_event, response_status, response_time_millis, response_body_extract, result_type, created_at, updated_at, seen].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        MailSlurpClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
