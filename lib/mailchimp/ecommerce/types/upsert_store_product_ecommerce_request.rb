# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpsertStoreProductEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :product_id, -> { String }, optional: false, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :handle, -> { String }, optional: true, nullable: false

        field :id, -> { Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequestID }, optional: false, nullable: false

        field :image_url, -> { String }, optional: true, nullable: false

        field :images, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequestImagesItem] }, optional: true, nullable: false

        field :published_at_foreign, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :type, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :variants, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequestVariantsItem] }, optional: true, nullable: false

        field :vendor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
