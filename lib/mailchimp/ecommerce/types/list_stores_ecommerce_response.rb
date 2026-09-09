# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of stores in the account.
      class ListStoresEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoresEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :stores, -> { Internal::Types::Array[Mailchimp::Types::ECommerceStore] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
