# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStorePromoRuleEcommerceRequestStartsAt < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestStartsAtZero }

        member -> { Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestStartsAtOne }
      end
    end
  end
end
