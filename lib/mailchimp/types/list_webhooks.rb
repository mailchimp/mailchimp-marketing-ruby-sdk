# frozen_string_literal: true

module Mailchimp
  module Types
    # Webhook configured for the given list.
    class ListWebhooks < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ListWebhooksLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :events, -> { Mailchimp::Types::ListWebhooksEvents }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :signing_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :signing_secret, -> { String }, optional: true, nullable: false

      field :sources, -> { Mailchimp::Types::ListWebhooksSources }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
