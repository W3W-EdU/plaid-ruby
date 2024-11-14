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
  class TransferEventType
    PENDING = "pending".freeze
    CANCELLED = "cancelled".freeze
    FAILED = "failed".freeze
    POSTED = "posted".freeze
    SETTLED = "settled".freeze
    FUNDS_AVAILABLE = "funds_available".freeze
    RETURNED = "returned".freeze
    SWEPT = "swept".freeze
    SWEPT_SETTLED = "swept_settled".freeze
    RETURN_SWEPT = "return_swept".freeze
    SWEEP_PENDING = "sweep.pending".freeze
    SWEEP_POSTED = "sweep.posted".freeze
    SWEEP_SETTLED = "sweep.settled".freeze
    SWEEP_RETURNED = "sweep.returned".freeze
    SWEEP_FAILED = "sweep.failed".freeze
    REFUND_PENDING = "refund.pending".freeze
    REFUND_CANCELLED = "refund.cancelled".freeze
    REFUND_FAILED = "refund.failed".freeze
    REFUND_POSTED = "refund.posted".freeze
    REFUND_SETTLED = "refund.settled".freeze
    REFUND_RETURNED = "refund.returned".freeze
    REFUND_SWEPT = "refund.swept".freeze
    REFUND_RETURN_SWEPT = "refund.return_swept".freeze

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
