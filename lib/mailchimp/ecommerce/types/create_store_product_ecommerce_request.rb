# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStoreProductEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :body, -> { Mailchimp::Types::EcommerceStoresOrdersPost }, optional: false, nullable: false
      end
    end
  end
end
