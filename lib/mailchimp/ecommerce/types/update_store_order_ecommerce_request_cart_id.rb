# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A cart id that the order was placed for.
      class UpdateStoreOrderEcommerceRequestCartID < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Integer }
      end
    end
  end
end
