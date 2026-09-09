# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # The latitude for the billing address location.
      class UpdateStoreOrderEcommerceRequestBillingAddressLatitude < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Integer }

        member -> { String }
      end
    end
  end
end
