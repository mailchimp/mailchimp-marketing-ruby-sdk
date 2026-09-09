# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStoreCartEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :checkout_url, -> { String }, optional: true, nullable: false

        field :currency_code, -> { String }, optional: false, nullable: false

        field :customer, -> { Mailchimp::Types::EcommerceStoresCartsPost }, optional: false, nullable: false

        field :id, -> { Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequestID }, optional: false, nullable: false

        field :lines, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequestLinesItem] }, optional: false, nullable: false

        field :order_total, -> { Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequestOrderTotal }, optional: false, nullable: false

        field :tax_total, -> { Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequestTaxTotal }, optional: true, nullable: false
      end
    end
  end
end
