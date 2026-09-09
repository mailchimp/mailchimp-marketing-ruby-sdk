# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # Statistics for the top-performing email domains in a campaign.
      class ListDomainPerformanceReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListDomainPerformanceReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :domains, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListDomainPerformanceReportsResponseDomainsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :total_sent, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
