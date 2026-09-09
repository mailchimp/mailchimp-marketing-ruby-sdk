# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStoreProductImageEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :product_id, -> { String }, optional: false, nullable: false

        field :image_id, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :variant_ids, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreProductImageEcommerceRequestVariantIDsItem] }, optional: true, nullable: false
      end
    end
  end
end
