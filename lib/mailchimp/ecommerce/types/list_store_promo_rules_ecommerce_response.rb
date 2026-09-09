# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of the store's promo rules.
      class ListStorePromoRulesEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStorePromoRulesEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :promo_rules, -> { Internal::Types::Array[Mailchimp::Types::ECommercePromoRule] }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
