# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStorePromoRulePromoCodeEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :promo_rule_id, -> { String }, optional: false, nullable: false

        field :promo_code_id, -> { String }, optional: false, nullable: false

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
end
