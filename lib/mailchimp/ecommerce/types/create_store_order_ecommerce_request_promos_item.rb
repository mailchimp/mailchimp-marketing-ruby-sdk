# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStoreOrderEcommerceRequestPromosItem < Internal::Types::Model
        field :amount_discounted, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestPromosItemAmountDiscounted }, optional: false, nullable: false

        field :code, -> { String }, optional: false, nullable: false

        field :type, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestPromosItemType }, optional: false, nullable: false
      end
    end
  end
end
