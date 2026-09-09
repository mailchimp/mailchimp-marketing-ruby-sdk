# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # One day's worth of list activity. Doesn't include Automation activity.
      class ListActivityListsResponseActivityItem < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListActivityListsResponseActivityItemLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :day, -> { String }, optional: true, nullable: false

        field :emails_sent, -> { Integer }, optional: true, nullable: false

        field :hard_bounce, -> { Integer }, optional: true, nullable: false

        field :other_adds, -> { Integer }, optional: true, nullable: false

        field :other_removes, -> { Integer }, optional: true, nullable: false

        field :recipient_clicks, -> { Integer }, optional: true, nullable: false

        field :soft_bounce, -> { Integer }, optional: true, nullable: false

        field :subs, -> { Integer }, optional: true, nullable: false

        field :unique_opens, -> { Integer }, optional: true, nullable: false

        field :unsubs, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
