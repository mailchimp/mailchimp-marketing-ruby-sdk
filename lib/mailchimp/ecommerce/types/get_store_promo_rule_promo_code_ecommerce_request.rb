# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class GetStorePromoRulePromoCodeEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :promo_rule_id, -> { String }, optional: false, nullable: false

        field :promo_code_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
