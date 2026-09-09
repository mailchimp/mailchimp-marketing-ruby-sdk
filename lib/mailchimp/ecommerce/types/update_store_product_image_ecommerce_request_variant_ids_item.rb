# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStoreProductImageEcommerceRequestVariantIDsItem < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Integer }
      end
    end
  end
end
