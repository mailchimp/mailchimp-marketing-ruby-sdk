# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class ListSurveyQuestionsReportingResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reporting::Types::ListSurveyQuestionsReportingResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :questions, -> { Internal::Types::Array[Mailchimp::Types::SurveyQuestionReport] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
