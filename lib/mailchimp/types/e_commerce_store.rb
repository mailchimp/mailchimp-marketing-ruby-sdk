# frozen_string_literal: true

module Mailchimp
  module Types
    # An individual store in an account.
    class ECommerceStore < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommerceStoreLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :address, -> { Mailchimp::Types::ECommerceStoreAddress }, optional: true, nullable: false

      field :automations, -> { Mailchimp::Types::ECommerceStoreAutomations }, optional: true, nullable: false

      field :connected_site, -> { Mailchimp::Types::ECommerceStoreConnectedSite }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :currency_code, -> { String }, optional: true, nullable: false

      field :domain, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :is_syncing, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :money_format, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :phone, -> { String }, optional: true, nullable: false

      field :platform, -> { String }, optional: true, nullable: false

      field :primary_locale, -> { String }, optional: true, nullable: false

      field :timezone, -> { String }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false
    end
  end
end
