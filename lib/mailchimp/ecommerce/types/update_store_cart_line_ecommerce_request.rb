# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStoreCartLineEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :cart_id, -> { String }, optional: false, nullable: false

        field :line_id, -> { String }, optional: false, nullable: false

        field :price, -> { Mailchimp::Ecommerce::Types::UpdateStoreCartLineEcommerceRequestPrice }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :product_variant_id, -> { String }, optional: true, nullable: false

        field :quantity, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
