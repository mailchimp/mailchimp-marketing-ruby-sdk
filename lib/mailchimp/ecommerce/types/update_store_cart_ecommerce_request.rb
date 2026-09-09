# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStoreCartEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :cart_id, -> { String }, optional: false, nullable: false

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :checkout_url, -> { String }, optional: true, nullable: false

        field :currency_code, -> { String }, optional: true, nullable: false

        field :customer, -> { Mailchimp::Types::EcommerceStoresCartsPatch }, optional: true, nullable: false

        field :id, -> { Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequestID }, optional: true, nullable: false

        field :lines, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequestLinesItem] }, optional: true, nullable: false

        field :order_total, -> { Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequestOrderTotal }, optional: true, nullable: false

        field :tax_total, -> { Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequestTaxTotal }, optional: true, nullable: false
      end
    end
  end
end
