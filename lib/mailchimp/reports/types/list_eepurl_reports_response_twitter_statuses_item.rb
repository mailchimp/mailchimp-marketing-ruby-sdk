# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # An individual tweet.
      class ListEepurlReportsResponseTwitterStatusesItem < Internal::Types::Model
        field :datetime, -> { String }, optional: true, nullable: false

        field :is_retweet, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :screen_name, -> { String }, optional: true, nullable: false

        field :status, -> { String }, optional: true, nullable: false

        field :status_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
