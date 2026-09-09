# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A list of feedback based on a campaign's statistics.
      class ListAdviceReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListAdviceReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :advice, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListAdviceReportsResponseAdviceItem] }, optional: true, nullable: false

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
