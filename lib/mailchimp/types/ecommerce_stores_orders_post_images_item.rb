# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific product image.
    class EcommerceStoresOrdersPostImagesItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :variant_ids, -> { Internal::Types::Array[Mailchimp::Types::EcommerceStoresOrdersPostImagesItemVariantIDsItem] }, optional: true, nullable: false
    end
  end
end
