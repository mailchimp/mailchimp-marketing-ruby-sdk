# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A summary of social activity for the campaign, tracked by EepURL.
      class ListEepurlReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListEepurlReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :clicks, -> { Mailchimp::Reports::Types::ListEepurlReportsResponseClicks }, optional: true, nullable: false

        field :eepurl, -> { String }, optional: true, nullable: false

        field :referrers, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListEepurlReportsResponseReferrersItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :twitter, -> { Mailchimp::Reports::Types::ListEepurlReportsResponseTwitter }, optional: true, nullable: false
      end
    end
  end
end
