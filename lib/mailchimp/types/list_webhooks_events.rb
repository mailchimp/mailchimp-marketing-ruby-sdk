# frozen_string_literal: true

module Mailchimp
  module Types
    # The events that can trigger the webhook and whether they are enabled.
    class ListWebhooksEvents < Internal::Types::Model
      field :campaign, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :cleaned, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :profile, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :subscribe, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :unsubscribe, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :upemail, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :sms_subscribe, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :sms_unsubscribe, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :upsms, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :sms_campaign, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
