# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific cart.
    class ECommerceCart < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommerceCartLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :checkout_url, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :currency_code, -> { String }, optional: true, nullable: false

      field :customer, -> { Mailchimp::Types::ECommerceCustomer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :lines, -> { Internal::Types::Array[Mailchimp::Types::ECommerceCartLineItem] }, optional: true, nullable: false

      field :order_total, -> { Integer }, optional: true, nullable: false

      field :tax_total, -> { Integer }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false
    end
  end
end
