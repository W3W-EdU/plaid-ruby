=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.461.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  # An optional object to filter `/asset_report/create` results. If provided, must be non-`null`. The optional `user` object is required for the report to be eligible for Fannie Mae's Day 1 Certainty program.
  class AssetReportCreateRequestOptions
    # Client-generated identifier, which can be used by lenders to track loan applications.
    attr_accessor :client_report_id

    # URL to which Plaid will send Assets webhooks, for example when the requested Asset Report is ready.
    attr_accessor :webhook

    # true to return balance and identity earlier as a fast report. Defaults to false if omitted.
    attr_accessor :include_fast_report

    # Additional information that can be included in the asset report. Possible values: `\"investments\"`
    attr_accessor :products

    # Use this field to request a `fast_asset` report. When Fast Assets is requested, Plaid will create two versions of the Asset Report: first, the Fast Asset Report, which will contain only current identity and balance information, and later, the Full Asset Report, which will also contain historical balance information and transaction data. A `PRODUCT_READY` webhook will be fired for each Asset Report when it is ready, and the `report_type` field will indicate whether the webhook is firing for the `full` or `fast` Asset Report. To retrieve the Fast Asset Report, call `/asset_report/get` with `fast_report` set to `true`. There is no additional charge for using Fast Assets.
    attr_accessor :add_ons

    attr_accessor :user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client_report_id' => :'client_report_id',
        :'webhook' => :'webhook',
        :'include_fast_report' => :'include_fast_report',
        :'products' => :'products',
        :'add_ons' => :'add_ons',
        :'user' => :'user'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'client_report_id' => :'String',
        :'webhook' => :'String',
        :'include_fast_report' => :'Boolean',
        :'products' => :'Array<String>',
        :'add_ons' => :'Array<AssetReportAddOns>',
        :'user' => :'AssetReportUser'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'client_report_id',
        :'webhook',
        :'include_fast_report',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::AssetReportCreateRequestOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::AssetReportCreateRequestOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'client_report_id')
        self.client_report_id = attributes[:'client_report_id']
      end

      if attributes.key?(:'webhook')
        self.webhook = attributes[:'webhook']
      end

      if attributes.key?(:'include_fast_report')
        self.include_fast_report = attributes[:'include_fast_report']
      end

      if attributes.key?(:'products')
        if (value = attributes[:'products']).is_a?(Array)
          self.products = value
        end
      end

      if attributes.key?(:'add_ons')
        if (value = attributes[:'add_ons']).is_a?(Array)
          self.add_ons = value
        end
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
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
          client_report_id == o.client_report_id &&
          webhook == o.webhook &&
          include_fast_report == o.include_fast_report &&
          products == o.products &&
          add_ons == o.add_ons &&
          user == o.user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [client_report_id, webhook, include_fast_report, products, add_ons, user].hash
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
