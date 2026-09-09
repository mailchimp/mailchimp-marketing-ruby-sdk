# frozen_string_literal: true

module Mailchimp
  module ActivityFeed
    module Types
      # An array of Chimp Chatter messages. There's a maximum of 200 messages present for an account.
      class ListChimpChatterActivityFeedResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::ActivityFeed::Types::ListChimpChatterActivityFeedResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :chimp_chatter, -> { Internal::Types::Array[Mailchimp::ActivityFeed::Types::ListChimpChatterActivityFeedResponseChimpChatterItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
