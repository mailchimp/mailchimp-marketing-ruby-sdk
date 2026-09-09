# frozen_string_literal: true

module Mailchimp
  module Types
    # A webhook configured for batch status updates.
    class BatchWebhook < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Internal::Types::Array[Mailchimp::Types::BatchWebhookLinksItemItem]] }, optional: true, nullable: false, api_name: "_links"

      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :signing_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :signing_secret, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
