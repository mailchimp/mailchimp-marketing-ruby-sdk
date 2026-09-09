# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class CreateStoreEcommerceRequest < Internal::Types::Model
        field :address, -> { Mailchimp::Ecommerce::Types::CreateStoreEcommerceRequestAddress }, optional: true, nullable: false

        field :currency_code, -> { String }, optional: false, nullable: false

        field :domain, -> { String }, optional: true, nullable: false

        field :email_address, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :is_syncing, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :list_id, -> { String }, optional: false, nullable: false

        field :money_format, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :platform, -> { String }, optional: true, nullable: false

        field :primary_locale, -> { String }, optional: true, nullable: false

        field :timezone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
