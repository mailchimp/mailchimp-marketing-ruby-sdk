# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about an Ecommerce Store's specific Promo Rule
    class ECommercePromoRule < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommercePromoRuleLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :amount, -> { Integer }, optional: true, nullable: false

      field :created_at_foreign, -> { String }, optional: true, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :ends_at, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :starts_at, -> { String }, optional: true, nullable: false

      field :target, -> { Mailchimp::Types::ECommercePromoRuleTarget }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::ECommercePromoRuleType }, optional: true, nullable: false

      field :updated_at_foreign, -> { String }, optional: true, nullable: false
    end
  end
end
