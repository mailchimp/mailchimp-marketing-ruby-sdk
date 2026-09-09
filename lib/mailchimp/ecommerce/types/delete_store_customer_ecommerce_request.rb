# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class DeleteStoreCustomerEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :customer_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
