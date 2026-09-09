# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # Information about a specific cart line item.
      class CreateStoreCartEcommerceRequestLinesItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :price, -> { Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequestLinesItemPrice }, optional: false, nullable: false

        field :product_id, -> { String }, optional: false, nullable: false

        field :product_variant_id, -> { String }, optional: false, nullable: false

        field :quantity, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
