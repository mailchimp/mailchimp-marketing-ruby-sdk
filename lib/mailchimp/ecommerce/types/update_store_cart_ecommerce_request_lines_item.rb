# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # Information about a specific cart line item.
      class UpdateStoreCartEcommerceRequestLinesItem < Internal::Types::Model
        field :price, -> { Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequestLinesItemPrice }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :product_variant_id, -> { String }, optional: true, nullable: false

        field :quantity, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
