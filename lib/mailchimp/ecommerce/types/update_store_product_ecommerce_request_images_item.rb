# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # Information about a specific product image.
      class UpdateStoreProductEcommerceRequestImagesItem < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :variant_ids, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreProductEcommerceRequestImagesItemVariantIDsItem] }, optional: true, nullable: false
      end
    end
  end
end
