# frozen_string_literal: true

module Mailchimp
  module ActivityFeed
    module Types
      # A Chimp Chatter message
      class ListChimpChatterActivityFeedResponseChimpChatterItem < Internal::Types::Model
        field :campaign_id, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :message, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :type, -> { Mailchimp::ActivityFeed::Types::ListChimpChatterActivityFeedResponseChimpChatterItemType }, optional: true, nullable: false

        field :update_time, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
