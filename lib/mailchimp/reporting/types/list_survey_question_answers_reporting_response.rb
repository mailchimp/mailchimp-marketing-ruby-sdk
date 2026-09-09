# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class ListSurveyQuestionAnswersReportingResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reporting::Types::ListSurveyQuestionAnswersReportingResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :answers, -> { Internal::Types::Array[Mailchimp::Reporting::Types::ListSurveyQuestionAnswersReportingResponseAnswersItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
