# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # Information about a specific order line.
      class UpdateStoreOrderEcommerceRequestLinesItem < Internal::Types::Model
        field :discount, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestLinesItemDiscount }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :price, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestLinesItemPrice }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :product_variant_id, -> { String }, optional: true, nullable: false

        field :quantity, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
