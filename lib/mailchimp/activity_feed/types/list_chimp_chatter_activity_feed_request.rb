# frozen_string_literal: true

module Mailchimp
  module ActivityFeed
    module Types
      class ListChimpChatterActivityFeedRequest < Internal::Types::Model
        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
