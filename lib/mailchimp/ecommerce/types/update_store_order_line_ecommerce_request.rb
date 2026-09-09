# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStoreOrderLineEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :order_id, -> { String }, optional: false, nullable: false

        field :line_id, -> { String }, optional: false, nullable: false

        field :discount, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderLineEcommerceRequestDiscount }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :price, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderLineEcommerceRequestPrice }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :product_variant_id, -> { String }, optional: true, nullable: false

        field :quantity, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
