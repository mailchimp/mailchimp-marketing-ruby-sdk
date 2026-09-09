# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A unique identifier for the cart.
      class CreateStoreCartEcommerceRequestID < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Integer }
      end
    end
  end
end
