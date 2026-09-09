# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A specific event for a contact.
      class ListMemberEventsListsResponseEventsItem < Internal::Types::Model
        field :name, -> { String }, optional: true, nullable: false

        field :occurred_at, -> { String }, optional: true, nullable: false

        field :properties, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
