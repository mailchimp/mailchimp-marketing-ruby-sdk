# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class DeleteStoreProductImageEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :product_id, -> { String }, optional: false, nullable: false

        field :image_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
