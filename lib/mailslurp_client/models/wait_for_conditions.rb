=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MailSlurpClient
  # Conditions to apply to emails that you are waiting for
  class WaitForConditions
    # ID of inbox to search within and apply conditions to. Essentially filtering the emails found to give a count.
    attr_accessor :inbox_id

    # Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation.
    attr_accessor :count

    # Max time in milliseconds to wait between retries if a `timeout` is specified.
    attr_accessor :delay_timeout

    # Max time in milliseconds to retry the `waitFor` operation until conditions are met.
    attr_accessor :timeout

    # Apply conditions only to **unread** emails. All emails begin with `read=false`. An email is marked `read=true` when an `EmailDto` representation of it has been returned to the user at least once. For example you have called `getEmail` or `waitForLatestEmail` etc., or you have viewed the email in the dashboard.
    attr_accessor :unread_only

    # How result size should be compared with the expected size. Exactly or at-least matching result?
    attr_accessor :count_type

    # Conditions that should be matched for an email to qualify for results. Each condition will be applied in order to each email within an inbox to filter a result list of matching emails you are waiting for.
    attr_accessor :matches

    # Direction to sort matching emails by created time
    attr_accessor :sort_direction

    # ISO Date Time earliest time of email to consider. Filter for matching emails that were received after this date
    attr_accessor :since

    # ISO Date Time latest time of email to consider. Filter for matching emails that were received before this date
    attr_accessor :before

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
        :'inbox_id' => :'inboxId',
        :'count' => :'count',
        :'delay_timeout' => :'delayTimeout',
        :'timeout' => :'timeout',
        :'unread_only' => :'unreadOnly',
        :'count_type' => :'countType',
        :'matches' => :'matches',
        :'sort_direction' => :'sortDirection',
        :'since' => :'since',
        :'before' => :'before'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'inbox_id' => :'String',
        :'count' => :'Integer',
        :'delay_timeout' => :'Integer',
        :'timeout' => :'Integer',
        :'unread_only' => :'Boolean',
        :'count_type' => :'String',
        :'matches' => :'Array<MatchOption>',
        :'sort_direction' => :'String',
        :'since' => :'DateTime',
        :'before' => :'DateTime'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::WaitForConditions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::WaitForConditions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'inbox_id')
        self.inbox_id = attributes[:'inbox_id']
      end

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'delay_timeout')
        self.delay_timeout = attributes[:'delay_timeout']
      end

      if attributes.key?(:'timeout')
        self.timeout = attributes[:'timeout']
      end

      if attributes.key?(:'unread_only')
        self.unread_only = attributes[:'unread_only']
      end

      if attributes.key?(:'count_type')
        self.count_type = attributes[:'count_type']
      end

      if attributes.key?(:'matches')
        if (value = attributes[:'matches']).is_a?(Array)
          self.matches = value
        end
      end

      if attributes.key?(:'sort_direction')
        self.sort_direction = attributes[:'sort_direction']
      end

      if attributes.key?(:'since')
        self.since = attributes[:'since']
      end

      if attributes.key?(:'before')
        self.before = attributes[:'before']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @inbox_id.nil?
        invalid_properties.push('invalid value for "inbox_id", inbox_id cannot be nil.')
      end

      if @timeout.nil?
        invalid_properties.push('invalid value for "timeout", timeout cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @inbox_id.nil?
      return false if @timeout.nil?
      count_type_validator = EnumAttributeValidator.new('String', ["EXACTLY", "ATLEAST"])
      return false unless count_type_validator.valid?(@count_type)
      sort_direction_validator = EnumAttributeValidator.new('String', ["ASC", "DESC"])
      return false unless sort_direction_validator.valid?(@sort_direction)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] count_type Object to be assigned
    def count_type=(count_type)
      validator = EnumAttributeValidator.new('String', ["EXACTLY", "ATLEAST"])
      unless validator.valid?(count_type)
        fail ArgumentError, "invalid value for \"count_type\", must be one of #{validator.allowable_values}."
      end
      @count_type = count_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort_direction Object to be assigned
    def sort_direction=(sort_direction)
      validator = EnumAttributeValidator.new('String', ["ASC", "DESC"])
      unless validator.valid?(sort_direction)
        fail ArgumentError, "invalid value for \"sort_direction\", must be one of #{validator.allowable_values}."
      end
      @sort_direction = sort_direction
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          inbox_id == o.inbox_id &&
          count == o.count &&
          delay_timeout == o.delay_timeout &&
          timeout == o.timeout &&
          unread_only == o.unread_only &&
          count_type == o.count_type &&
          matches == o.matches &&
          sort_direction == o.sort_direction &&
          since == o.since &&
          before == o.before
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [inbox_id, count, delay_timeout, timeout, unread_only, count_type, matches, sort_direction, since, before].hash
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
