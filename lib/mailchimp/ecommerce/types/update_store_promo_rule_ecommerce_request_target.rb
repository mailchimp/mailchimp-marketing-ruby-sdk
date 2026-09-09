# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      module UpdateStorePromoRuleEcommerceRequestTarget
        extend Mailchimp::Internal::Types::Enum

        PER_ITEM = "per_item"
        TOTAL = "total"
        SHIPPING = "shipping"
      end
    end
  end
end
