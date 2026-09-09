# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStorePromoRuleEcommerceRequestEndsAt < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestEndsAtZero }

        member -> { Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestEndsAtOne }
      end
    end
  end
end
