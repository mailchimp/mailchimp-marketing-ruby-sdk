# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpsertStoreProductVariantEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :product_id, -> { String }, optional: false, nullable: false

        field :variant_id, -> { String }, optional: false, nullable: false

        field :backorders, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :image_url, -> { String }, optional: true, nullable: false

        field :inventory_quantity, -> { Integer }, optional: true, nullable: false

        field :price, -> { Mailchimp::Ecommerce::Types::UpsertStoreProductVariantEcommerceRequestPrice }, optional: true, nullable: false

        field :sku, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :visibility, -> { String }, optional: true, nullable: false
      end
    end
  end
end
