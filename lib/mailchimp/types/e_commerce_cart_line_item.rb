# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific cart line item.
    class ECommerceCartLineItem < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommerceCartLineItemLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :id, -> { String }, optional: true, nullable: false

      field :price, -> { Integer }, optional: true, nullable: false

      field :product_id, -> { String }, optional: true, nullable: false

      field :product_title, -> { String }, optional: true, nullable: false

      field :product_variant_id, -> { String }, optional: true, nullable: false

      field :product_variant_title, -> { String }, optional: true, nullable: false

      field :quantity, -> { Integer }, optional: true, nullable: false
    end
  end
end
