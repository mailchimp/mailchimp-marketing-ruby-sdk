# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpdateStorePromoRuleEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :promo_rule_id, -> { String }, optional: false, nullable: false

        field :amount, -> { Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestAmount }, optional: true, nullable: false

        field :created_at_foreign, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :ends_at, -> { Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestEndsAt }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :starts_at, -> { Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestStartsAt }, optional: true, nullable: false

        field :target, -> { Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestTarget }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :type, -> { Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestType }, optional: true, nullable: false

        field :updated_at_foreign, -> { String }, optional: true, nullable: false
      end
    end
  end
end
