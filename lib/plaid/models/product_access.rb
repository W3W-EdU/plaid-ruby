=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.586.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # The product access being requested. Used to or disallow product access across all accounts. If unset, defaults to all products allowed.
  class ProductAccess
    # Allow access to statements. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
    attr_accessor :statements

    # Allow access to the Identity product (name, email, phone, address). Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
    attr_accessor :identity

    # Allow access to account number details. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
    attr_accessor :auth

    # Allow access to transaction details. Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
    attr_accessor :transactions

    # Allow access to \"accounts_details_transactions\". Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
    attr_accessor :accounts_details_transactions

    # Allow access to \"accounts_routing_number\". Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
    attr_accessor :accounts_routing_number

    # Allow access to \"accounts_statements\". Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
    attr_accessor :accounts_statements

    # Allow access to \"accounts_tax_statements\". Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
    attr_accessor :accounts_tax_statements

    # Allow access to \"customers_profiles\". Only used by certain partners. If relevant to the partner and unset, defaults to `true`.
    attr_accessor :customers_profiles

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'statements' => :'statements',
        :'identity' => :'identity',
        :'auth' => :'auth',
        :'transactions' => :'transactions',
        :'accounts_details_transactions' => :'accounts_details_transactions',
        :'accounts_routing_number' => :'accounts_routing_number',
        :'accounts_statements' => :'accounts_statements',
        :'accounts_tax_statements' => :'accounts_tax_statements',
        :'customers_profiles' => :'customers_profiles'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'statements' => :'Boolean',
        :'identity' => :'Boolean',
        :'auth' => :'Boolean',
        :'transactions' => :'Boolean',
        :'accounts_details_transactions' => :'Boolean',
        :'accounts_routing_number' => :'Boolean',
        :'accounts_statements' => :'Boolean',
        :'accounts_tax_statements' => :'Boolean',
        :'customers_profiles' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'statements',
        :'identity',
        :'auth',
        :'transactions',
        :'accounts_details_transactions',
        :'accounts_routing_number',
        :'accounts_statements',
        :'accounts_tax_statements',
        :'customers_profiles'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::ProductAccess` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::ProductAccess`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'statements')
        self.statements = attributes[:'statements']
      else
        self.statements = true
      end

      if attributes.key?(:'identity')
        self.identity = attributes[:'identity']
      else
        self.identity = true
      end

      if attributes.key?(:'auth')
        self.auth = attributes[:'auth']
      else
        self.auth = true
      end

      if attributes.key?(:'transactions')
        self.transactions = attributes[:'transactions']
      else
        self.transactions = true
      end

      if attributes.key?(:'accounts_details_transactions')
        self.accounts_details_transactions = attributes[:'accounts_details_transactions']
      else
        self.accounts_details_transactions = true
      end

      if attributes.key?(:'accounts_routing_number')
        self.accounts_routing_number = attributes[:'accounts_routing_number']
      else
        self.accounts_routing_number = true
      end

      if attributes.key?(:'accounts_statements')
        self.accounts_statements = attributes[:'accounts_statements']
      else
        self.accounts_statements = true
      end

      if attributes.key?(:'accounts_tax_statements')
        self.accounts_tax_statements = attributes[:'accounts_tax_statements']
      else
        self.accounts_tax_statements = true
      end

      if attributes.key?(:'customers_profiles')
        self.customers_profiles = attributes[:'customers_profiles']
      else
        self.customers_profiles = true
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          statements == o.statements &&
          identity == o.identity &&
          auth == o.auth &&
          transactions == o.transactions &&
          accounts_details_transactions == o.accounts_details_transactions &&
          accounts_routing_number == o.accounts_routing_number &&
          accounts_statements == o.accounts_statements &&
          accounts_tax_statements == o.accounts_tax_statements &&
          customers_profiles == o.customers_profiles
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [statements, identity, auth, transactions, accounts_details_transactions, accounts_routing_number, accounts_statements, accounts_tax_statements, customers_profiles].hash
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
