# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStoreOrderEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :billing_address, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestBillingAddress }, optional: true, nullable: false

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :cart_id, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestCartID }, optional: true, nullable: false

        field :cancelled_at_foreign, -> { String }, optional: true, nullable: false

        field :currency_code, -> { String }, optional: false, nullable: false

        field :customer, -> { Mailchimp::Types::EcommerceStoresCartsPost }, optional: false, nullable: false

        field :discount_total, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestDiscountTotal }, optional: true, nullable: false

        field :financial_status, -> { String }, optional: true, nullable: false

        field :fulfillment_status, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :landing_site, -> { String }, optional: true, nullable: false

        field :lines, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestLinesItem] }, optional: false, nullable: false

        field :order_total, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestOrderTotal }, optional: false, nullable: false

        field :order_url, -> { String }, optional: true, nullable: false

        field :outreach, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestOutreach }, optional: true, nullable: false

        field :processed_at_foreign, -> { String }, optional: true, nullable: false

        field :promos, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestPromosItem] }, optional: true, nullable: false

        field :shipping_address, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestShippingAddress }, optional: true, nullable: false

        field :shipping_total, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestShippingTotal }, optional: true, nullable: false

        field :tax_total, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestTaxTotal }, optional: true, nullable: false

        field :tracking_carrier, -> { String }, optional: true, nullable: false

        field :tracking_code, -> { Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestTrackingCode }, optional: true, nullable: false

        field :tracking_number, -> { String }, optional: true, nullable: false

        field :tracking_url, -> { String }, optional: true, nullable: false

        field :updated_at_foreign, -> { String }, optional: true, nullable: false
      end
    end
  end
end
