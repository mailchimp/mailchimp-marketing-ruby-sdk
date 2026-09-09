# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of a product's variants.
      class ListStoreProductVariantsEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoreProductVariantsEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :product_id, -> { String }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :variants, -> { Internal::Types::Array[Mailchimp::Types::ECommerceProductVariant] }, optional: true, nullable: false
      end
    end
  end
end
