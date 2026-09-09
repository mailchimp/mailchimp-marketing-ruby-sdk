# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStoreOrderEcommerceRequestPromosItem < Internal::Types::Model
        field :amount_discounted, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestPromosItemAmountDiscounted }, optional: false, nullable: false

        field :code, -> { String }, optional: false, nullable: false

        field :type, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestPromosItemType }, optional: false, nullable: false
      end
    end
  end
end
