# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStorePromoRuleEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :amount, -> { Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestAmount }, optional: false, nullable: false

        field :created_at_foreign, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: false, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :ends_at, -> { Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestEndsAt }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :starts_at, -> { Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestStartsAt }, optional: true, nullable: false

        field :target, -> { Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestTarget }, optional: false, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :type, -> { Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestType }, optional: false, nullable: false

        field :updated_at_foreign, -> { String }, optional: true, nullable: false
      end
    end
  end
end
