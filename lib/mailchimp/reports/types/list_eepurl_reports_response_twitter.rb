# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A summary of Twitter activity for a campaign.
      class ListEepurlReportsResponseTwitter < Internal::Types::Model
        field :first_tweet, -> { String }, optional: true, nullable: false

        field :last_tweet, -> { String }, optional: true, nullable: false

        field :retweets, -> { Integer }, optional: true, nullable: false

        field :statuses, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListEepurlReportsResponseTwitterStatusesItem] }, optional: true, nullable: false

        field :tweets, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
