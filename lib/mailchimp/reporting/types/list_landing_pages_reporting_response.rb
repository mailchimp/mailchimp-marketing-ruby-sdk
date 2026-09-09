# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      # A collection of landing pages.
      class ListLandingPagesReportingResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reporting::Types::ListLandingPagesReportingResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :landing_pages, -> { Internal::Types::Array[Mailchimp::Types::LandingPageReport] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
