# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # Information about a specific product image.
      class UpsertStoreProductEcommerceRequestImagesItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :url, -> { String }, optional: false, nullable: false

        field :variant_ids, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequestImagesItemVariantIDsItem] }, optional: true, nullable: false
      end
    end
  end
end
