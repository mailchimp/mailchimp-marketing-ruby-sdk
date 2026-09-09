# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class ListSurveysReportingResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reporting::Types::ListSurveysReportingResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :surveys, -> { Internal::Types::Array[Mailchimp::Reporting::Types::ListSurveysReportingResponseSurveysItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
