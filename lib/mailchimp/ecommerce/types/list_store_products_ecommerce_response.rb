# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of a store's products.
      class ListStoreProductsEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoreProductsEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :products, -> { Internal::Types::Array[Mailchimp::Types::ECommerceProduct] }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
