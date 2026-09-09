# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # Information about a specific order line.
      class CreateStoreOrderEcommerceRequestLinesItem < Internal::Types::Model
        field :discount, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestLinesItemDiscount }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :price, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestLinesItemPrice }, optional: false, nullable: false

        field :product, -> { Mailchimp::Types::EcommerceStoresOrdersPost }, optional: true, nullable: false

        field :product_id, -> { String }, optional: false, nullable: false

        field :product_variant_id, -> { String }, optional: false, nullable: false

        field :quantity, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
