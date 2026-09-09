# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific product.
    class ECommerceProduct < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommerceProductLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :currency_code, -> { String }, optional: true, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :handle, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :image_url, -> { String }, optional: true, nullable: false

      field :images, -> { Internal::Types::Array[Mailchimp::Types::ECommerceProductImagesItem] }, optional: true, nullable: false

      field :published_at_foreign, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false

      field :variants, -> { Internal::Types::Array[Mailchimp::Types::ECommerceProductVariant] }, optional: true, nullable: false

      field :vendor, -> { String }, optional: true, nullable: false
    end
  end
end
