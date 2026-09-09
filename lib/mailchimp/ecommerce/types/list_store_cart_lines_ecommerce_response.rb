# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of a cart's line items.
      class ListStoreCartLinesEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoreCartLinesEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :cart_id, -> { String }, optional: true, nullable: false

        field :lines, -> { Internal::Types::Array[Mailchimp::Types::ECommerceCartLineItem] }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
