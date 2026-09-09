# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of orders in an account.
      class ListOrdersEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListOrdersEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :orders, -> { Internal::Types::Array[Mailchimp::Types::ECommerceOrder] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
