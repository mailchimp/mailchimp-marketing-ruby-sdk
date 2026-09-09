# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class GetStoreCartLineEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :cart_id, -> { String }, optional: false, nullable: false

        field :line_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
