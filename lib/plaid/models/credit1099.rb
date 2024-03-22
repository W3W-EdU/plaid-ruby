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
  # An object representing an end user's 1099 tax form
  class Credit1099
    # An identifier of the document referenced by the document metadata.
    attr_accessor :document_id

    attr_accessor :document_metadata

    attr_accessor :form_1099_type

    attr_accessor :recipient

    attr_accessor :payer

    attr_accessor :filer

    # Tax year of the tax form.
    attr_accessor :tax_year

    # Amount in rent by payer.
    attr_accessor :rents

    # Amount in royalties by payer.
    attr_accessor :royalties

    # Amount in other income by payer.
    attr_accessor :other_income

    # Amount of federal income tax withheld from payer.
    attr_accessor :federal_income_tax_withheld

    # Amount of fishing boat proceeds from payer.
    attr_accessor :fishing_boat_proceeds

    # Amount of medical and healthcare payments from payer.
    attr_accessor :medical_and_healthcare_payments

    # Amount of nonemployee compensation from payer.
    attr_accessor :nonemployee_compensation

    # Amount of substitute payments made by payer.
    attr_accessor :substitute_payments_in_lieu_of_dividends_or_interest

    # Whether or not payer made direct sales over $5000 of consumer products.
    attr_accessor :payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer

    # Amount of crop insurance proceeds.
    attr_accessor :crop_insurance_proceeds

    # Amount of golden parachute payments made by payer.
    attr_accessor :excess_golden_parachute_payments

    # Amount of gross proceeds paid to an attorney by payer.
    attr_accessor :gross_proceeds_paid_to_an_attorney

    # Amount of 409A deferrals earned by payer.
    attr_accessor :section_409a_deferrals

    # Amount of 409A income earned by payer.
    attr_accessor :section_409a_income

    # Amount of state tax withheld of payer for primary state.
    attr_accessor :state_tax_withheld

    # Amount of state tax withheld of payer for secondary state.
    attr_accessor :state_tax_withheld_lower

    # Primary state ID.
    attr_accessor :payer_state_number

    # Secondary state ID.
    attr_accessor :payer_state_number_lower

    # State income reported for primary state.
    attr_accessor :state_income

    # State income reported for secondary state.
    attr_accessor :state_income_lower

    # One of the values will be provided Payment card Third party network
    attr_accessor :transactions_reported

    # Name of the PSE (Payment Settlement Entity).
    attr_accessor :pse_name

    # Formatted (XXX) XXX-XXXX. Phone number of the PSE (Payment Settlement Entity).
    attr_accessor :pse_telephone_number

    # Gross amount reported.
    attr_accessor :gross_amount

    # Amount in card not present transactions.
    attr_accessor :card_not_present_transaction

    # Merchant category of filer.
    attr_accessor :merchant_category_code

    # Number of payment transactions made.
    attr_accessor :number_of_payment_transactions

    # Amount reported for January.
    attr_accessor :january_amount

    # Amount reported for February.
    attr_accessor :february_amount

    # Amount reported for March.
    attr_accessor :march_amount

    # Amount reported for April.
    attr_accessor :april_amount

    # Amount reported for May.
    attr_accessor :may_amount

    # Amount reported for June.
    attr_accessor :june_amount

    # Amount reported for July.
    attr_accessor :july_amount

    # Amount reported for August.
    attr_accessor :august_amount

    # Amount reported for September.
    attr_accessor :september_amount

    # Amount reported for October.
    attr_accessor :october_amount

    # Amount reported for November.
    attr_accessor :november_amount

    # Amount reported for December.
    attr_accessor :december_amount

    # Primary state of business.
    attr_accessor :primary_state

    # Secondary state of business.
    attr_accessor :secondary_state

    # Primary state ID.
    attr_accessor :primary_state_id

    # Secondary state ID.
    attr_accessor :secondary_state_id

    # State income tax reported for primary state.
    attr_accessor :primary_state_income_tax

    # State income tax reported for secondary state.
    attr_accessor :secondary_state_income_tax

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
        :'document_id' => :'document_id',
        :'document_metadata' => :'document_metadata',
        :'form_1099_type' => :'form_1099_type',
        :'recipient' => :'recipient',
        :'payer' => :'payer',
        :'filer' => :'filer',
        :'tax_year' => :'tax_year',
        :'rents' => :'rents',
        :'royalties' => :'royalties',
        :'other_income' => :'other_income',
        :'federal_income_tax_withheld' => :'federal_income_tax_withheld',
        :'fishing_boat_proceeds' => :'fishing_boat_proceeds',
        :'medical_and_healthcare_payments' => :'medical_and_healthcare_payments',
        :'nonemployee_compensation' => :'nonemployee_compensation',
        :'substitute_payments_in_lieu_of_dividends_or_interest' => :'substitute_payments_in_lieu_of_dividends_or_interest',
        :'payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer' => :'payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer',
        :'crop_insurance_proceeds' => :'crop_insurance_proceeds',
        :'excess_golden_parachute_payments' => :'excess_golden_parachute_payments',
        :'gross_proceeds_paid_to_an_attorney' => :'gross_proceeds_paid_to_an_attorney',
        :'section_409a_deferrals' => :'section_409a_deferrals',
        :'section_409a_income' => :'section_409a_income',
        :'state_tax_withheld' => :'state_tax_withheld',
        :'state_tax_withheld_lower' => :'state_tax_withheld_lower',
        :'payer_state_number' => :'payer_state_number',
        :'payer_state_number_lower' => :'payer_state_number_lower',
        :'state_income' => :'state_income',
        :'state_income_lower' => :'state_income_lower',
        :'transactions_reported' => :'transactions_reported',
        :'pse_name' => :'pse_name',
        :'pse_telephone_number' => :'pse_telephone_number',
        :'gross_amount' => :'gross_amount',
        :'card_not_present_transaction' => :'card_not_present_transaction',
        :'merchant_category_code' => :'merchant_category_code',
        :'number_of_payment_transactions' => :'number_of_payment_transactions',
        :'january_amount' => :'january_amount',
        :'february_amount' => :'february_amount',
        :'march_amount' => :'march_amount',
        :'april_amount' => :'april_amount',
        :'may_amount' => :'may_amount',
        :'june_amount' => :'june_amount',
        :'july_amount' => :'july_amount',
        :'august_amount' => :'august_amount',
        :'september_amount' => :'september_amount',
        :'october_amount' => :'october_amount',
        :'november_amount' => :'november_amount',
        :'december_amount' => :'december_amount',
        :'primary_state' => :'primary_state',
        :'secondary_state' => :'secondary_state',
        :'primary_state_id' => :'primary_state_id',
        :'secondary_state_id' => :'secondary_state_id',
        :'primary_state_income_tax' => :'primary_state_income_tax',
        :'secondary_state_income_tax' => :'secondary_state_income_tax'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'document_id' => :'String',
        :'document_metadata' => :'CreditDocumentMetadata',
        :'form_1099_type' => :'Form1099Type',
        :'recipient' => :'Credit1099Recipient',
        :'payer' => :'Credit1099Payer',
        :'filer' => :'Credit1099Filer',
        :'tax_year' => :'String',
        :'rents' => :'Float',
        :'royalties' => :'Float',
        :'other_income' => :'Float',
        :'federal_income_tax_withheld' => :'Float',
        :'fishing_boat_proceeds' => :'Float',
        :'medical_and_healthcare_payments' => :'Float',
        :'nonemployee_compensation' => :'Float',
        :'substitute_payments_in_lieu_of_dividends_or_interest' => :'Float',
        :'payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer' => :'String',
        :'crop_insurance_proceeds' => :'Float',
        :'excess_golden_parachute_payments' => :'Float',
        :'gross_proceeds_paid_to_an_attorney' => :'Float',
        :'section_409a_deferrals' => :'Float',
        :'section_409a_income' => :'Float',
        :'state_tax_withheld' => :'Float',
        :'state_tax_withheld_lower' => :'Float',
        :'payer_state_number' => :'String',
        :'payer_state_number_lower' => :'String',
        :'state_income' => :'Float',
        :'state_income_lower' => :'Float',
        :'transactions_reported' => :'String',
        :'pse_name' => :'String',
        :'pse_telephone_number' => :'String',
        :'gross_amount' => :'Float',
        :'card_not_present_transaction' => :'Float',
        :'merchant_category_code' => :'String',
        :'number_of_payment_transactions' => :'String',
        :'january_amount' => :'Float',
        :'february_amount' => :'Float',
        :'march_amount' => :'Float',
        :'april_amount' => :'Float',
        :'may_amount' => :'Float',
        :'june_amount' => :'Float',
        :'july_amount' => :'Float',
        :'august_amount' => :'Float',
        :'september_amount' => :'Float',
        :'october_amount' => :'Float',
        :'november_amount' => :'Float',
        :'december_amount' => :'Float',
        :'primary_state' => :'String',
        :'secondary_state' => :'String',
        :'primary_state_id' => :'String',
        :'secondary_state_id' => :'String',
        :'primary_state_income_tax' => :'Float',
        :'secondary_state_income_tax' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'document_id',
        :'tax_year',
        :'rents',
        :'royalties',
        :'other_income',
        :'federal_income_tax_withheld',
        :'fishing_boat_proceeds',
        :'medical_and_healthcare_payments',
        :'nonemployee_compensation',
        :'substitute_payments_in_lieu_of_dividends_or_interest',
        :'payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer',
        :'crop_insurance_proceeds',
        :'excess_golden_parachute_payments',
        :'gross_proceeds_paid_to_an_attorney',
        :'section_409a_deferrals',
        :'section_409a_income',
        :'state_tax_withheld',
        :'state_tax_withheld_lower',
        :'payer_state_number',
        :'payer_state_number_lower',
        :'state_income',
        :'state_income_lower',
        :'transactions_reported',
        :'pse_name',
        :'pse_telephone_number',
        :'gross_amount',
        :'card_not_present_transaction',
        :'merchant_category_code',
        :'number_of_payment_transactions',
        :'january_amount',
        :'february_amount',
        :'march_amount',
        :'april_amount',
        :'may_amount',
        :'june_amount',
        :'july_amount',
        :'august_amount',
        :'september_amount',
        :'october_amount',
        :'november_amount',
        :'december_amount',
        :'primary_state',
        :'secondary_state',
        :'primary_state_id',
        :'secondary_state_id',
        :'primary_state_income_tax',
        :'secondary_state_income_tax'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::Credit1099` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::Credit1099`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'document_id')
        self.document_id = attributes[:'document_id']
      end

      if attributes.key?(:'document_metadata')
        self.document_metadata = attributes[:'document_metadata']
      end

      if attributes.key?(:'form_1099_type')
        self.form_1099_type = attributes[:'form_1099_type']
      end

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.key?(:'payer')
        self.payer = attributes[:'payer']
      end

      if attributes.key?(:'filer')
        self.filer = attributes[:'filer']
      end

      if attributes.key?(:'tax_year')
        self.tax_year = attributes[:'tax_year']
      end

      if attributes.key?(:'rents')
        self.rents = attributes[:'rents']
      end

      if attributes.key?(:'royalties')
        self.royalties = attributes[:'royalties']
      end

      if attributes.key?(:'other_income')
        self.other_income = attributes[:'other_income']
      end

      if attributes.key?(:'federal_income_tax_withheld')
        self.federal_income_tax_withheld = attributes[:'federal_income_tax_withheld']
      end

      if attributes.key?(:'fishing_boat_proceeds')
        self.fishing_boat_proceeds = attributes[:'fishing_boat_proceeds']
      end

      if attributes.key?(:'medical_and_healthcare_payments')
        self.medical_and_healthcare_payments = attributes[:'medical_and_healthcare_payments']
      end

      if attributes.key?(:'nonemployee_compensation')
        self.nonemployee_compensation = attributes[:'nonemployee_compensation']
      end

      if attributes.key?(:'substitute_payments_in_lieu_of_dividends_or_interest')
        self.substitute_payments_in_lieu_of_dividends_or_interest = attributes[:'substitute_payments_in_lieu_of_dividends_or_interest']
      end

      if attributes.key?(:'payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer')
        self.payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer = attributes[:'payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer']
      end

      if attributes.key?(:'crop_insurance_proceeds')
        self.crop_insurance_proceeds = attributes[:'crop_insurance_proceeds']
      end

      if attributes.key?(:'excess_golden_parachute_payments')
        self.excess_golden_parachute_payments = attributes[:'excess_golden_parachute_payments']
      end

      if attributes.key?(:'gross_proceeds_paid_to_an_attorney')
        self.gross_proceeds_paid_to_an_attorney = attributes[:'gross_proceeds_paid_to_an_attorney']
      end

      if attributes.key?(:'section_409a_deferrals')
        self.section_409a_deferrals = attributes[:'section_409a_deferrals']
      end

      if attributes.key?(:'section_409a_income')
        self.section_409a_income = attributes[:'section_409a_income']
      end

      if attributes.key?(:'state_tax_withheld')
        self.state_tax_withheld = attributes[:'state_tax_withheld']
      end

      if attributes.key?(:'state_tax_withheld_lower')
        self.state_tax_withheld_lower = attributes[:'state_tax_withheld_lower']
      end

      if attributes.key?(:'payer_state_number')
        self.payer_state_number = attributes[:'payer_state_number']
      end

      if attributes.key?(:'payer_state_number_lower')
        self.payer_state_number_lower = attributes[:'payer_state_number_lower']
      end

      if attributes.key?(:'state_income')
        self.state_income = attributes[:'state_income']
      end

      if attributes.key?(:'state_income_lower')
        self.state_income_lower = attributes[:'state_income_lower']
      end

      if attributes.key?(:'transactions_reported')
        self.transactions_reported = attributes[:'transactions_reported']
      end

      if attributes.key?(:'pse_name')
        self.pse_name = attributes[:'pse_name']
      end

      if attributes.key?(:'pse_telephone_number')
        self.pse_telephone_number = attributes[:'pse_telephone_number']
      end

      if attributes.key?(:'gross_amount')
        self.gross_amount = attributes[:'gross_amount']
      end

      if attributes.key?(:'card_not_present_transaction')
        self.card_not_present_transaction = attributes[:'card_not_present_transaction']
      end

      if attributes.key?(:'merchant_category_code')
        self.merchant_category_code = attributes[:'merchant_category_code']
      end

      if attributes.key?(:'number_of_payment_transactions')
        self.number_of_payment_transactions = attributes[:'number_of_payment_transactions']
      end

      if attributes.key?(:'january_amount')
        self.january_amount = attributes[:'january_amount']
      end

      if attributes.key?(:'february_amount')
        self.february_amount = attributes[:'february_amount']
      end

      if attributes.key?(:'march_amount')
        self.march_amount = attributes[:'march_amount']
      end

      if attributes.key?(:'april_amount')
        self.april_amount = attributes[:'april_amount']
      end

      if attributes.key?(:'may_amount')
        self.may_amount = attributes[:'may_amount']
      end

      if attributes.key?(:'june_amount')
        self.june_amount = attributes[:'june_amount']
      end

      if attributes.key?(:'july_amount')
        self.july_amount = attributes[:'july_amount']
      end

      if attributes.key?(:'august_amount')
        self.august_amount = attributes[:'august_amount']
      end

      if attributes.key?(:'september_amount')
        self.september_amount = attributes[:'september_amount']
      end

      if attributes.key?(:'october_amount')
        self.october_amount = attributes[:'october_amount']
      end

      if attributes.key?(:'november_amount')
        self.november_amount = attributes[:'november_amount']
      end

      if attributes.key?(:'december_amount')
        self.december_amount = attributes[:'december_amount']
      end

      if attributes.key?(:'primary_state')
        self.primary_state = attributes[:'primary_state']
      end

      if attributes.key?(:'secondary_state')
        self.secondary_state = attributes[:'secondary_state']
      end

      if attributes.key?(:'primary_state_id')
        self.primary_state_id = attributes[:'primary_state_id']
      end

      if attributes.key?(:'secondary_state_id')
        self.secondary_state_id = attributes[:'secondary_state_id']
      end

      if attributes.key?(:'primary_state_income_tax')
        self.primary_state_income_tax = attributes[:'primary_state_income_tax']
      end

      if attributes.key?(:'secondary_state_income_tax')
        self.secondary_state_income_tax = attributes[:'secondary_state_income_tax']
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
          document_id == o.document_id &&
          document_metadata == o.document_metadata &&
          form_1099_type == o.form_1099_type &&
          recipient == o.recipient &&
          payer == o.payer &&
          filer == o.filer &&
          tax_year == o.tax_year &&
          rents == o.rents &&
          royalties == o.royalties &&
          other_income == o.other_income &&
          federal_income_tax_withheld == o.federal_income_tax_withheld &&
          fishing_boat_proceeds == o.fishing_boat_proceeds &&
          medical_and_healthcare_payments == o.medical_and_healthcare_payments &&
          nonemployee_compensation == o.nonemployee_compensation &&
          substitute_payments_in_lieu_of_dividends_or_interest == o.substitute_payments_in_lieu_of_dividends_or_interest &&
          payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer == o.payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer &&
          crop_insurance_proceeds == o.crop_insurance_proceeds &&
          excess_golden_parachute_payments == o.excess_golden_parachute_payments &&
          gross_proceeds_paid_to_an_attorney == o.gross_proceeds_paid_to_an_attorney &&
          section_409a_deferrals == o.section_409a_deferrals &&
          section_409a_income == o.section_409a_income &&
          state_tax_withheld == o.state_tax_withheld &&
          state_tax_withheld_lower == o.state_tax_withheld_lower &&
          payer_state_number == o.payer_state_number &&
          payer_state_number_lower == o.payer_state_number_lower &&
          state_income == o.state_income &&
          state_income_lower == o.state_income_lower &&
          transactions_reported == o.transactions_reported &&
          pse_name == o.pse_name &&
          pse_telephone_number == o.pse_telephone_number &&
          gross_amount == o.gross_amount &&
          card_not_present_transaction == o.card_not_present_transaction &&
          merchant_category_code == o.merchant_category_code &&
          number_of_payment_transactions == o.number_of_payment_transactions &&
          january_amount == o.january_amount &&
          february_amount == o.february_amount &&
          march_amount == o.march_amount &&
          april_amount == o.april_amount &&
          may_amount == o.may_amount &&
          june_amount == o.june_amount &&
          july_amount == o.july_amount &&
          august_amount == o.august_amount &&
          september_amount == o.september_amount &&
          october_amount == o.october_amount &&
          november_amount == o.november_amount &&
          december_amount == o.december_amount &&
          primary_state == o.primary_state &&
          secondary_state == o.secondary_state &&
          primary_state_id == o.primary_state_id &&
          secondary_state_id == o.secondary_state_id &&
          primary_state_income_tax == o.primary_state_income_tax &&
          secondary_state_income_tax == o.secondary_state_income_tax
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [document_id, document_metadata, form_1099_type, recipient, payer, filer, tax_year, rents, royalties, other_income, federal_income_tax_withheld, fishing_boat_proceeds, medical_and_healthcare_payments, nonemployee_compensation, substitute_payments_in_lieu_of_dividends_or_interest, payer_made_direct_sales_of_5000_or_more_of_consumer_products_to_buyer, crop_insurance_proceeds, excess_golden_parachute_payments, gross_proceeds_paid_to_an_attorney, section_409a_deferrals, section_409a_income, state_tax_withheld, state_tax_withheld_lower, payer_state_number, payer_state_number_lower, state_income, state_income_lower, transactions_reported, pse_name, pse_telephone_number, gross_amount, card_not_present_transaction, merchant_category_code, number_of_payment_transactions, january_amount, february_amount, march_amount, april_amount, may_amount, june_amount, july_amount, august_amount, september_amount, october_amount, november_amount, december_amount, primary_state, secondary_state, primary_state_id, secondary_state_id, primary_state_income_tax, secondary_state_income_tax].hash
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
