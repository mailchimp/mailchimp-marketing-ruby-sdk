# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStoreOrderLineEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :order_id, -> { String }, optional: false, nullable: false

        field :discount, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderLineEcommerceRequestDiscount }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :price, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderLineEcommerceRequestPrice }, optional: false, nullable: false

        field :product, -> { Mailchimp::Types::EcommerceStoresOrdersPost }, optional: true, nullable: false

        field :product_id, -> { String }, optional: false, nullable: false

        field :product_variant_id, -> { String }, optional: false, nullable: false

        field :quantity, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
