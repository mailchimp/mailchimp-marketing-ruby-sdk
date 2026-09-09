# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of an order's line items.
      class ListStoreOrderLinesEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoreOrderLinesEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :lines, -> { Internal::Types::Array[Mailchimp::Types::ECommerceOrderLineItem] }, optional: true, nullable: false

        field :order_id, -> { String }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
