# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A list of reports containing child campaigns for a specific campaign.
      class ListSubReportsReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListSubReportsReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :reports, -> { Internal::Types::Array[Mailchimp::Types::CampaignReport] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
