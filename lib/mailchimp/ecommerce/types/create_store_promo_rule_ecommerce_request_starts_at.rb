# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStorePromoRuleEcommerceRequestStartsAt < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestStartsAtZero }

        member -> { Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestStartsAtOne }
      end
    end
  end
end
