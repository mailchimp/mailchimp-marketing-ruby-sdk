# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStoreOrderEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :order_id, -> { String }, optional: false, nullable: false

        field :billing_address, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestBillingAddress }, optional: true, nullable: false

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :cart_id, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestCartID }, optional: true, nullable: false

        field :cancelled_at_foreign, -> { String }, optional: true, nullable: false

        field :currency_code, -> { String }, optional: true, nullable: false

        field :customer, -> { Mailchimp::Types::EcommerceStoresCartsPatch }, optional: true, nullable: false

        field :discount_total, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestDiscountTotal }, optional: true, nullable: false

        field :financial_status, -> { String }, optional: true, nullable: false

        field :fulfillment_status, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :landing_site, -> { String }, optional: true, nullable: false

        field :lines, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestLinesItem] }, optional: true, nullable: false

        field :order_total, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestOrderTotal }, optional: true, nullable: false

        field :order_url, -> { String }, optional: true, nullable: false

        field :outreach, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestOutreach }, optional: true, nullable: false

        field :processed_at_foreign, -> { String }, optional: true, nullable: false

        field :promos, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestPromosItem] }, optional: true, nullable: false

        field :shipping_address, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestShippingAddress }, optional: true, nullable: false

        field :shipping_total, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestShippingTotal }, optional: true, nullable: false

        field :tax_total, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestTaxTotal }, optional: true, nullable: false

        field :tracking_carrier, -> { String }, optional: true, nullable: false

        field :tracking_code, -> { Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestTrackingCode }, optional: true, nullable: false

        field :tracking_number, -> { String }, optional: true, nullable: false

        field :tracking_url, -> { String }, optional: true, nullable: false

        field :updated_at_foreign, -> { String }, optional: true, nullable: false
      end
    end
  end
end
