=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.503.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # Represents a transfer within the Transfers API.
  class Transfer
    # Plaid’s unique identifier for a transfer.
    attr_accessor :id

    # Plaid’s unique identifier for a transfer authorization.
    attr_accessor :authorization_id

    attr_accessor :ach_class

    # The Plaid `account_id` corresponding to the end-user account that will be debited or credited.
    attr_accessor :account_id

    # The id of the associated funding account, available in the Plaid Dashboard. If present, this indicates which of your business checking accounts will be credited or debited.
    attr_accessor :funding_account_id

    attr_accessor :type

    attr_accessor :user

    # The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\"). When calling `/transfer/authorization/create`, specify the maximum amount to authorize. When calling `/transfer/create`, specify the exact amount of the transfer, up to a maximum of the amount authorized. If this field is left blank when calling `/transfer/create`, the maximum amount authorized in the `authorization_id` will be sent.
    attr_accessor :amount

    # The description of the transfer.
    attr_accessor :description

    # The datetime when this transfer was created. This will be of the form `2006-01-02T15:04:05Z`
    attr_accessor :created

    attr_accessor :status

    attr_accessor :sweep_status

    attr_accessor :network

    attr_accessor :wire_details

    # When `true`, you can still cancel this transfer.
    attr_accessor :cancellable

    attr_accessor :failure_reason

    # The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: The JSON values must be Strings (no nested JSON objects allowed) Only ASCII characters may be used Maximum of 50 key/value pairs Maximum key length of 40 characters Maximum value length of 500 characters 
    attr_accessor :metadata

    # Plaid’s unique identifier for the origination account that was used for this transfer.
    attr_accessor :origination_account_id

    attr_accessor :guarantee_decision

    attr_accessor :guarantee_decision_rationale

    # The currency of the transfer amount, e.g. \"USD\"
    attr_accessor :iso_currency_code

    # The date 3 business days from settlement date indicating the following ACH returns can no longer happen: R01, R02, R03, R29. This will be of the form YYYY-MM-DD.
    attr_accessor :standard_return_window

    # The date 61 business days from settlement date indicating the following ACH returns can no longer happen: R05, R07, R10, R11, R51, R33, R37, R38, R51, R52, R53. This will be of the form YYYY-MM-DD.
    attr_accessor :unauthorized_return_window

    # The expected date when the full amount of the transfer settles at the consumers’ account, if the transfer is credit; or at the customer's business checking account, if the transfer is debit. Only set for ACH transfers and is null for non-ACH transfers. Only set for ACH transfers. This will be of the form YYYY-MM-DD.
    attr_accessor :expected_settlement_date

    # The Plaid client ID that is the originator of this transfer. Only present if created on behalf of another client as a [Platform customer](https://plaid.com/docs/transfer/application/#originators-vs-platforms).
    attr_accessor :originator_client_id

    # A list of refunds associated with this transfer.
    attr_accessor :refunds

    # The id of the recurring transfer if this transfer belongs to a recurring transfer.
    attr_accessor :recurring_transfer_id

    # The expected sweep settlement schedule of this transfer, assuming this transfer is not `returned`. Only applies to ACH debit transfers.
    attr_accessor :expected_sweep_settlement_schedule

    attr_accessor :credit_funds_source

    # The amount to deduct from `transfer.amount` and distribute to the platform’s Ledger balance as a facilitator fee (decimal string with two digits of precision e.g. \"10.00\"). The remainder will go to the end-customer’s Ledger balance. This must be less than or equal to the `transfer.amount`.
    attr_accessor :facilitator_fee

    # The trace identifier for the transfer based on its network. This will only be set after the transfer has posted.  For `ach` or `same-day-ach` transfers, this is the ACH trace number. For `wire` transfers, this is the IMAD (Input Message Accountability Data) number. The field will remain null for transfers on other rails.
    attr_accessor :network_trace_id

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
        :'authorization_id' => :'authorization_id',
        :'ach_class' => :'ach_class',
        :'account_id' => :'account_id',
        :'funding_account_id' => :'funding_account_id',
        :'type' => :'type',
        :'user' => :'user',
        :'amount' => :'amount',
        :'description' => :'description',
        :'created' => :'created',
        :'status' => :'status',
        :'sweep_status' => :'sweep_status',
        :'network' => :'network',
        :'wire_details' => :'wire_details',
        :'cancellable' => :'cancellable',
        :'failure_reason' => :'failure_reason',
        :'metadata' => :'metadata',
        :'origination_account_id' => :'origination_account_id',
        :'guarantee_decision' => :'guarantee_decision',
        :'guarantee_decision_rationale' => :'guarantee_decision_rationale',
        :'iso_currency_code' => :'iso_currency_code',
        :'standard_return_window' => :'standard_return_window',
        :'unauthorized_return_window' => :'unauthorized_return_window',
        :'expected_settlement_date' => :'expected_settlement_date',
        :'originator_client_id' => :'originator_client_id',
        :'refunds' => :'refunds',
        :'recurring_transfer_id' => :'recurring_transfer_id',
        :'expected_sweep_settlement_schedule' => :'expected_sweep_settlement_schedule',
        :'credit_funds_source' => :'credit_funds_source',
        :'facilitator_fee' => :'facilitator_fee',
        :'network_trace_id' => :'network_trace_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'authorization_id' => :'String',
        :'ach_class' => :'ACHClass',
        :'account_id' => :'String',
        :'funding_account_id' => :'String',
        :'type' => :'TransferType',
        :'user' => :'TransferUserInResponse',
        :'amount' => :'String',
        :'description' => :'String',
        :'created' => :'Time',
        :'status' => :'TransferStatus',
        :'sweep_status' => :'TransferSweepStatus',
        :'network' => :'TransferNetwork',
        :'wire_details' => :'TransferWireDetails',
        :'cancellable' => :'Boolean',
        :'failure_reason' => :'TransferFailure',
        :'metadata' => :'Hash<String, String>',
        :'origination_account_id' => :'String',
        :'guarantee_decision' => :'TransferAuthorizationGuaranteeDecision',
        :'guarantee_decision_rationale' => :'TransferAuthorizationGuaranteeDecisionRationale',
        :'iso_currency_code' => :'String',
        :'standard_return_window' => :'Date',
        :'unauthorized_return_window' => :'Date',
        :'expected_settlement_date' => :'Date',
        :'originator_client_id' => :'String',
        :'refunds' => :'Array<TransferRefund>',
        :'recurring_transfer_id' => :'String',
        :'expected_sweep_settlement_schedule' => :'Array<TransferExpectedSweepSettlementScheduleItem>',
        :'credit_funds_source' => :'TransferCreditFundsSource',
        :'facilitator_fee' => :'String',
        :'network_trace_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'funding_account_id',
        :'sweep_status',
        :'wire_details',
        :'failure_reason',
        :'metadata',
        :'guarantee_decision',
        :'guarantee_decision_rationale',
        :'standard_return_window',
        :'unauthorized_return_window',
        :'expected_settlement_date',
        :'originator_client_id',
        :'recurring_transfer_id',
        :'network_trace_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::Transfer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::Transfer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'authorization_id')
        self.authorization_id = attributes[:'authorization_id']
      end

      if attributes.key?(:'ach_class')
        self.ach_class = attributes[:'ach_class']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'funding_account_id')
        self.funding_account_id = attributes[:'funding_account_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'sweep_status')
        self.sweep_status = attributes[:'sweep_status']
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.key?(:'wire_details')
        self.wire_details = attributes[:'wire_details']
      end

      if attributes.key?(:'cancellable')
        self.cancellable = attributes[:'cancellable']
      end

      if attributes.key?(:'failure_reason')
        self.failure_reason = attributes[:'failure_reason']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'origination_account_id')
        self.origination_account_id = attributes[:'origination_account_id']
      end

      if attributes.key?(:'guarantee_decision')
        self.guarantee_decision = attributes[:'guarantee_decision']
      end

      if attributes.key?(:'guarantee_decision_rationale')
        self.guarantee_decision_rationale = attributes[:'guarantee_decision_rationale']
      end

      if attributes.key?(:'iso_currency_code')
        self.iso_currency_code = attributes[:'iso_currency_code']
      end

      if attributes.key?(:'standard_return_window')
        self.standard_return_window = attributes[:'standard_return_window']
      end

      if attributes.key?(:'unauthorized_return_window')
        self.unauthorized_return_window = attributes[:'unauthorized_return_window']
      end

      if attributes.key?(:'expected_settlement_date')
        self.expected_settlement_date = attributes[:'expected_settlement_date']
      end

      if attributes.key?(:'originator_client_id')
        self.originator_client_id = attributes[:'originator_client_id']
      end

      if attributes.key?(:'refunds')
        if (value = attributes[:'refunds']).is_a?(Array)
          self.refunds = value
        end
      end

      if attributes.key?(:'recurring_transfer_id')
        self.recurring_transfer_id = attributes[:'recurring_transfer_id']
      end

      if attributes.key?(:'expected_sweep_settlement_schedule')
        if (value = attributes[:'expected_sweep_settlement_schedule']).is_a?(Array)
          self.expected_sweep_settlement_schedule = value
        end
      end

      if attributes.key?(:'credit_funds_source')
        self.credit_funds_source = attributes[:'credit_funds_source']
      end

      if attributes.key?(:'facilitator_fee')
        self.facilitator_fee = attributes[:'facilitator_fee']
      end

      if attributes.key?(:'network_trace_id')
        self.network_trace_id = attributes[:'network_trace_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @authorization_id.nil?
        invalid_properties.push('invalid value for "authorization_id", authorization_id cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @user.nil?
        invalid_properties.push('invalid value for "user", user cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @cancellable.nil?
        invalid_properties.push('invalid value for "cancellable", cancellable cannot be nil.')
      end


      if @origination_account_id.nil?
        invalid_properties.push('invalid value for "origination_account_id", origination_account_id cannot be nil.')
      end

      if @iso_currency_code.nil?
        invalid_properties.push('invalid value for "iso_currency_code", iso_currency_code cannot be nil.')
      end

      if @refunds.nil?
        invalid_properties.push('invalid value for "refunds", refunds cannot be nil.')
      end

      if @credit_funds_source.nil?
        invalid_properties.push('invalid value for "credit_funds_source", credit_funds_source cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @authorization_id.nil?
      return false if @type.nil?
      return false if @user.nil?
      return false if @amount.nil?
      return false if @description.nil?
      return false if @created.nil?
      return false if @status.nil?
      return false if @network.nil?
      return false if @cancellable.nil?
      return false if @metadata.length > 50
      return false if @origination_account_id.nil?
      return false if @iso_currency_code.nil?
      return false if @refunds.nil?
      return false if @credit_funds_source.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] metadata Value to be assigned
    def metadata=(metadata)

      @metadata = metadata
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          authorization_id == o.authorization_id &&
          ach_class == o.ach_class &&
          account_id == o.account_id &&
          funding_account_id == o.funding_account_id &&
          type == o.type &&
          user == o.user &&
          amount == o.amount &&
          description == o.description &&
          created == o.created &&
          status == o.status &&
          sweep_status == o.sweep_status &&
          network == o.network &&
          wire_details == o.wire_details &&
          cancellable == o.cancellable &&
          failure_reason == o.failure_reason &&
          metadata == o.metadata &&
          origination_account_id == o.origination_account_id &&
          guarantee_decision == o.guarantee_decision &&
          guarantee_decision_rationale == o.guarantee_decision_rationale &&
          iso_currency_code == o.iso_currency_code &&
          standard_return_window == o.standard_return_window &&
          unauthorized_return_window == o.unauthorized_return_window &&
          expected_settlement_date == o.expected_settlement_date &&
          originator_client_id == o.originator_client_id &&
          refunds == o.refunds &&
          recurring_transfer_id == o.recurring_transfer_id &&
          expected_sweep_settlement_schedule == o.expected_sweep_settlement_schedule &&
          credit_funds_source == o.credit_funds_source &&
          facilitator_fee == o.facilitator_fee &&
          network_trace_id == o.network_trace_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, authorization_id, ach_class, account_id, funding_account_id, type, user, amount, description, created, status, sweep_status, network, wire_details, cancellable, failure_reason, metadata, origination_account_id, guarantee_decision, guarantee_decision_rationale, iso_currency_code, standard_return_window, unauthorized_return_window, expected_settlement_date, originator_client_id, refunds, recurring_transfer_id, expected_sweep_settlement_schedule, credit_funds_source, facilitator_fee, network_trace_id].hash
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
