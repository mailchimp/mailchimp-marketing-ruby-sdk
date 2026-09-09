# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Manage webhooks for a specific list.
      class ListWebhooksListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListWebhooksListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :list_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :webhooks, -> { Internal::Types::Array[Mailchimp::Types::ListWebhooks] }, optional: true, nullable: false
      end
    end
  end
end
