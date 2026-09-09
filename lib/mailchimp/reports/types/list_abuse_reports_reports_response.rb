# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A list of abuse complaints for a specific list.
      class ListAbuseReportsReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListAbuseReportsReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :abuse_reports, -> { Internal::Types::Array[Mailchimp::Types::AbuseComplaint] }, optional: true, nullable: false

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
