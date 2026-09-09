# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific product image.
    class ECommerceProductImagesItem < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommerceProductImagesItemLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :id, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false

      field :variant_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
