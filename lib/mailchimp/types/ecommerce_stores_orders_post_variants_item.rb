# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific product variant.
    class EcommerceStoresOrdersPostVariantsItem < Internal::Types::Model
      field :backorders, -> { String }, optional: true, nullable: false

      field :id, -> { Mailchimp::Types::EcommerceStoresOrdersPostVariantsItemID }, optional: false, nullable: false

      field :image_url, -> { String }, optional: true, nullable: false

      field :inventory_quantity, -> { Integer }, optional: true, nullable: false

      field :price, -> { Mailchimp::Types::EcommerceStoresOrdersPostVariantsItemPrice }, optional: true, nullable: false

      field :sku, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: true, nullable: false

      field :visibility, -> { String }, optional: true, nullable: false
    end
  end
end
