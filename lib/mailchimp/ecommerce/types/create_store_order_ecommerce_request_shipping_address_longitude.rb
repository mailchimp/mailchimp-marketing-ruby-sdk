# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # The longitude for the shipping address location.
      class CreateStoreOrderEcommerceRequestShippingAddressLongitude < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Integer }

        member -> { String }
      end
    end
  end
end
