# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of orders in a store.
      class ListStoreOrdersEcommerceResponse < Internal::Types::Model
        field :store_id, -> { String }, optional: true, nullable: false

        field :orders, -> { Internal::Types::Array[Mailchimp::Types::ECommerceOrder] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoreOrdersEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"
      end
    end
  end
end
