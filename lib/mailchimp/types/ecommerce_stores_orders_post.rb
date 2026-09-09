# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific product.
    class EcommerceStoresOrdersPost < Internal::Types::Model
      field :description, -> { String }, optional: true, nullable: false

      field :handle, -> { String }, optional: true, nullable: false

      field :id, -> { Mailchimp::Types::EcommerceStoresOrdersPostID }, optional: false, nullable: false

      field :image_url, -> { String }, optional: true, nullable: false

      field :images, -> { Internal::Types::Array[Mailchimp::Types::EcommerceStoresOrdersPostImagesItem] }, optional: true, nullable: false

      field :published_at_foreign, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false

      field :variants, -> { Internal::Types::Array[Mailchimp::Types::EcommerceStoresOrdersPostVariantsItem] }, optional: false, nullable: false

      field :vendor, -> { String }, optional: true, nullable: false
    end
  end
end
