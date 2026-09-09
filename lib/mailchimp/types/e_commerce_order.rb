# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific order.
    class ECommerceOrder < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommerceOrderLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :billing_address, -> { Mailchimp::Types::ECommerceOrderBillingAddress }, optional: true, nullable: false

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :cart_id, -> { String }, optional: true, nullable: false

      field :cancelled_at_foreign, -> { String }, optional: true, nullable: false

      field :currency_code, -> { String }, optional: true, nullable: false

      field :customer, -> { Mailchimp::Types::ECommerceCustomer }, optional: true, nullable: false

      field :discount_total, -> { Integer }, optional: true, nullable: false

      field :financial_status, -> { String }, optional: true, nullable: false

      field :fulfillment_status, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :landing_site, -> { String }, optional: true, nullable: false

      field :lines, -> { Internal::Types::Array[Mailchimp::Types::ECommerceOrderLineItem] }, optional: true, nullable: false

      field :order_total, -> { Mailchimp::Types::ECommerceOrderOrderTotal }, optional: true, nullable: false

      field :order_url, -> { String }, optional: true, nullable: false

      field :outreach, -> { Mailchimp::Types::ECommerceOrderOutreach }, optional: true, nullable: false

      field :processed_at_foreign, -> { String }, optional: true, nullable: false

      field :promos, -> { Internal::Types::Array[Mailchimp::Types::ECommerceOrderPromosItem] }, optional: true, nullable: false

      field :shipping_address, -> { Mailchimp::Types::ECommerceOrderShippingAddress }, optional: true, nullable: false

      field :shipping_total, -> { Mailchimp::Types::ECommerceOrderShippingTotal }, optional: true, nullable: false

      field :store_id, -> { String }, optional: true, nullable: false

      field :tax_total, -> { Mailchimp::Types::ECommerceOrderTaxTotal }, optional: true, nullable: false

      field :tracking_carrier, -> { String }, optional: true, nullable: false

      field :tracking_code, -> { Mailchimp::Types::ECommerceOrderTrackingCode }, optional: true, nullable: false

      field :tracking_number, -> { String }, optional: true, nullable: false

      field :tracking_url, -> { String }, optional: true, nullable: false

      field :updated_at_foreign, -> { String }, optional: true, nullable: false
    end
  end
end
