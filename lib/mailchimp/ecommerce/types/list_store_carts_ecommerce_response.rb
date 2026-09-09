# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of a store's carts.
      class ListStoreCartsEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoreCartsEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :carts, -> { Internal::Types::Array[Mailchimp::Types::ECommerceCart] }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
