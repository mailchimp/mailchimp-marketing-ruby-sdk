# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of the store's customers.
      class ListStoreCustomersEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoreCustomersEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :customers, -> { Internal::Types::Array[Mailchimp::Types::ECommerceCustomer] }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
