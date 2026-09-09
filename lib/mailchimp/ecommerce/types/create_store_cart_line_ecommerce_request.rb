# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStoreCartLineEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :cart_id, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :price, -> { Mailchimp::Ecommerce::Types::CreateStoreCartLineEcommerceRequestPrice }, optional: false, nullable: false

        field :product_id, -> { String }, optional: false, nullable: false

        field :product_variant_id, -> { String }, optional: false, nullable: false

        field :quantity, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
