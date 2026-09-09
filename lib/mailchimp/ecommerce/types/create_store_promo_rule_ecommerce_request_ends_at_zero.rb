# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStorePromoRuleEcommerceRequestEndsAtZero < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { String }

        member -> { String }
      end
    end
  end
end
