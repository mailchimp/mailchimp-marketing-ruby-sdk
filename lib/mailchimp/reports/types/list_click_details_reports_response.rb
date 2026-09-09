# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A list of URLs and unique IDs included in HTML and plain-text versions of a campaign.
      class ListClickDetailsReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListClickDetailsReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :urls_clicked, -> { Internal::Types::Array[Mailchimp::Types::ClickDetailReport] }, optional: true, nullable: false
      end
    end
  end
end
