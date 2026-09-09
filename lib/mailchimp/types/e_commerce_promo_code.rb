# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about an Ecommerce Store's specific Promo Code
    class ECommercePromoCode < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommercePromoCodeLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :code, -> { String }, optional: true, nullable: false

      field :created_at_foreign, -> { String }, optional: true, nullable: false

      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :redemption_url, -> { String }, optional: true, nullable: false

      field :updated_at_foreign, -> { String }, optional: true, nullable: false

      field :usage_count, -> { Integer }, optional: true, nullable: false
    end
  end
end
