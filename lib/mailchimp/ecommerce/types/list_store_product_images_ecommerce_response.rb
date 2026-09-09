# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of a product's images.
      class ListStoreProductImagesEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoreProductImagesEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :images, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStoreProductImagesEcommerceResponseImagesItem] }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
