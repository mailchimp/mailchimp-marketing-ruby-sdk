# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # A collection of the store's promo codes.
      class ListStorePromoRulePromoCodesEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListStorePromoRulePromoCodesEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :promo_codes, -> { Internal::Types::Array[Mailchimp::Types::ECommercePromoCode] }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
