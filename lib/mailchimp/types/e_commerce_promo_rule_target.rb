# frozen_string_literal: true

module Mailchimp
  module Types
    module ECommercePromoRuleTarget
      extend Mailchimp::Internal::Types::Enum

      PER_ITEM = "per_item"
      TOTAL = "total"
      SHIPPING = "shipping"
    end
  end
end
