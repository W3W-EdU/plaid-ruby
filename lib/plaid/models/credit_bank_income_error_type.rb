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
  class CreditBankIncomeErrorType
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR".freeze
    INSUFFICIENT_CREDENTIALS = "INSUFFICIENT_CREDENTIALS".freeze
    ITEM_LOCKED = "ITEM_LOCKED".freeze
    USER_SETUP_REQUIRED = "USER_SETUP_REQUIRED".freeze
    COUNTRY_NOT_SUPPORTED = "COUNTRY_NOT_SUPPORTED".freeze
    INSTITUTION_DOWN = "INSTITUTION_DOWN".freeze
    INSTITUTION_NO_LONGER_SUPPORTED = "INSTITUTION_NO_LONGER_SUPPORTED".freeze
    INSTITUTION_NOT_RESPONDING = "INSTITUTION_NOT_RESPONDING".freeze
    INVALID_CREDENTIALS = "INVALID_CREDENTIALS".freeze
    INVALID_MFA = "INVALID_MFA".freeze
    INVALID_SEND_METHOD = "INVALID_SEND_METHOD".freeze
    ITEM_LOGIN_REQUIRED = "ITEM_LOGIN_REQUIRED".freeze
    MFA_NOT_SUPPORTED = "MFA_NOT_SUPPORTED".freeze
    NO_ACCOUNTS = "NO_ACCOUNTS".freeze
    ITEM_NOT_SUPPORTED = "ITEM_NOT_SUPPORTED".freeze
    ACCESS_NOT_GRANTED = "ACCESS_NOT_GRANTED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      # We do not validate that the value is one of the enums set in the OpenAPI
      # file because we want to be able to add to our list of enums without
      # breaking this client library.
      value
    end
  end

end
