# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific product variant.
    class ECommerceProductVariant < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommerceProductVariantLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :backorders, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :image_url, -> { String }, optional: true, nullable: false

      field :inventory_quantity, -> { Integer }, optional: true, nullable: false

      field :price, -> { Integer }, optional: true, nullable: false

      field :sku, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false

      field :visibility, -> { String }, optional: true, nullable: false
    end
  end
end
