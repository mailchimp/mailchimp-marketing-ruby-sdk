# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemEcommNumberField
      extend Mailchimp::Internal::Types::Enum

      ECOMM_SPENT_AVG = "ecomm_spent_avg"
      ECOMM_ORDERS = "ecomm_orders"
      ECOMM_PROD_ALL = "ecomm_prod_all"
      ECOMM_AVG_ORD = "ecomm_avg_ord"
    end
  end
end
