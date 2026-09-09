# frozen_string_literal: true

module Mailchimp
  module Types
    # Configure a webhook for the given list.
    class AddWebhook < Internal::Types::Model
      field :events, -> { Mailchimp::Types::AddWebhookEvents }, optional: true, nullable: false

      field :sources, -> { Mailchimp::Types::AddWebhookSources }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
