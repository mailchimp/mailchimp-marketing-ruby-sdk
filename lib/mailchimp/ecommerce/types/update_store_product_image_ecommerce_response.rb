# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # Information about a specific product image.
      class UpdateStoreProductImageEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreProductImageEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :id, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :variant_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
