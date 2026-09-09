# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # Information about a specific product variant.
      class UpsertStoreProductEcommerceRequestVariantsItem < Internal::Types::Model
        field :backorders, -> { String }, optional: true, nullable: false

        field :id, -> { Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequestVariantsItemID }, optional: false, nullable: false

        field :image_url, -> { String }, optional: true, nullable: false

        field :inventory_quantity, -> { Integer }, optional: true, nullable: false

        field :price, -> { Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequestVariantsItemPrice }, optional: true, nullable: false

        field :sku, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :visibility, -> { String }, optional: true, nullable: false
      end
    end
  end
end
