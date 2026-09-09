# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class DeleteStoreOrderLineEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :order_id, -> { String }, optional: false, nullable: false

        field :line_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
