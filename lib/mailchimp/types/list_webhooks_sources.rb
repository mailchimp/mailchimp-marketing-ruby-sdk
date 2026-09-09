# frozen_string_literal: true

module Mailchimp
  module Types
    # The possible sources of any events that can trigger the webhook and whether they are enabled.
    class ListWebhooksSources < Internal::Types::Model
      field :admin, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :api, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :user, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
