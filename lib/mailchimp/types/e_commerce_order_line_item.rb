# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific order line.
    class ECommerceOrderLineItem < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommerceOrderLineItemLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :discount, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :image_url, -> { String }, optional: true, nullable: false

      field :price, -> { Mailchimp::Types::ECommerceOrderLineItemPrice }, optional: true, nullable: false

      field :product_id, -> { String }, optional: true, nullable: false

      field :product_title, -> { String }, optional: true, nullable: false

      field :product_variant_id, -> { String }, optional: true, nullable: false

      field :product_variant_title, -> { String }, optional: true, nullable: false

      field :quantity, -> { Integer }, optional: true, nullable: false
    end
  end
end
