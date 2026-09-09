# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStoreCustomerEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :customer_id, -> { String }, optional: false, nullable: false

        field :body, -> { Mailchimp::Types::EcommerceStoresCartsPatch }, optional: false, nullable: false
      end
    end
  end
end
