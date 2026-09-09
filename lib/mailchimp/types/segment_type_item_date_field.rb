# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemDateField
      extend Mailchimp::Internal::Types::Enum

      TIMESTAMP_OPT = "timestamp_opt"
      INFO_CHANGED = "info_changed"
      ECOMM_DATE = "ecomm_date"
    end
  end
end
