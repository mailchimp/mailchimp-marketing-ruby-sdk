# frozen_string_literal: true

module Mailchimp
  module BatchWebhooks
    module Types
      # Manage webhooks for batch requests.
      class ListBatchWebhooksResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::BatchWebhooks::Types::ListBatchWebhooksResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :webhooks, -> { Internal::Types::Array[Mailchimp::Types::BatchWebhook] }, optional: true, nullable: false
      end
    end
  end
end
