# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # The top email clients based on user-agent strings.
      class ListClientsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListClientsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :clients, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListClientsListsResponseClientsItem] }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
