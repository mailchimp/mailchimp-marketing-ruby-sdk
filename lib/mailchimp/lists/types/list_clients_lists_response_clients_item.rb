# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # The email client.
      class ListClientsListsResponseClientsItem < Internal::Types::Model
        field :client, -> { String }, optional: true, nullable: false

        field :members, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
