=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.610.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # Describes the last time each datatype was accessed by an application.
  class LastDataAccessTimes
    # ID of the application accessing data.
    attr_accessor :application_id

    # The last time account_balance_info was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    attr_accessor :account_balance_info

    # The last time account_routing_number was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    attr_accessor :account_routing_number

    # The last time contact_details was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    attr_accessor :contact_details

    # The last time transactions was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    attr_accessor :transactions

    # The last time credit_and_loans was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    attr_accessor :credit_and_loans

    # The last time investments was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    attr_accessor :investments

    # The last time payroll_info was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    attr_accessor :payroll_info

    # The last time transaction_risk_info was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    attr_accessor :transaction_risk_info

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'application_id' => :'application_id',
        :'account_balance_info' => :'account_balance_info',
        :'account_routing_number' => :'account_routing_number',
        :'contact_details' => :'contact_details',
        :'transactions' => :'transactions',
        :'credit_and_loans' => :'credit_and_loans',
        :'investments' => :'investments',
        :'payroll_info' => :'payroll_info',
        :'transaction_risk_info' => :'transaction_risk_info'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'application_id' => :'String',
        :'account_balance_info' => :'Time',
        :'account_routing_number' => :'Time',
        :'contact_details' => :'Time',
        :'transactions' => :'Time',
        :'credit_and_loans' => :'Time',
        :'investments' => :'Time',
        :'payroll_info' => :'Time',
        :'transaction_risk_info' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'account_balance_info',
        :'account_routing_number',
        :'contact_details',
        :'transactions',
        :'credit_and_loans',
        :'investments',
        :'payroll_info',
        :'transaction_risk_info'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::LastDataAccessTimes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::LastDataAccessTimes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'application_id')
        self.application_id = attributes[:'application_id']
      end

      if attributes.key?(:'account_balance_info')
        self.account_balance_info = attributes[:'account_balance_info']
      end

      if attributes.key?(:'account_routing_number')
        self.account_routing_number = attributes[:'account_routing_number']
      end

      if attributes.key?(:'contact_details')
        self.contact_details = attributes[:'contact_details']
      end

      if attributes.key?(:'transactions')
        self.transactions = attributes[:'transactions']
      end

      if attributes.key?(:'credit_and_loans')
        self.credit_and_loans = attributes[:'credit_and_loans']
      end

      if attributes.key?(:'investments')
        self.investments = attributes[:'investments']
      end

      if attributes.key?(:'payroll_info')
        self.payroll_info = attributes[:'payroll_info']
      end

      if attributes.key?(:'transaction_risk_info')
        self.transaction_risk_info = attributes[:'transaction_risk_info']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @application_id.nil?
        invalid_properties.push('invalid value for "application_id", application_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @application_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          application_id == o.application_id &&
          account_balance_info == o.account_balance_info &&
          account_routing_number == o.account_routing_number &&
          contact_details == o.contact_details &&
          transactions == o.transactions &&
          credit_and_loans == o.credit_and_loans &&
          investments == o.investments &&
          payroll_info == o.payroll_info &&
          transaction_risk_info == o.transaction_risk_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [application_id, account_balance_info, account_routing_number, contact_details, transactions, credit_and_loans, investments, payroll_info, transaction_risk_info].hash
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
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = Plaid.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
