# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class ListSurveyResponsesReportingResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reporting::Types::ListSurveyResponsesReportingResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :responses, -> { Internal::Types::Array[Mailchimp::Reporting::Types::ListSurveyResponsesReportingResponseResponsesItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
