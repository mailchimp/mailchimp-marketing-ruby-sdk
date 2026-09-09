# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStorePromoRuleEcommerceRequestEndsAt < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestEndsAtZero }

        member -> { Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestEndsAtOne }
      end
    end
  end
end
