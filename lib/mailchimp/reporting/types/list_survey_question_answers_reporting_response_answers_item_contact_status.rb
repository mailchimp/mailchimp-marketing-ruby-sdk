# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      module ListSurveyQuestionAnswersReportingResponseAnswersItemContactStatus
        extend Mailchimp::Internal::Types::Enum

        SUBSCRIBED = "Subscribed"
        UNSUBSCRIBED = "Unsubscribed"
        NON_SUBSCRIBED = "Non-Subscribed"
        CLEANED = "Cleaned"
        ARCHIVED = "Archived"
      end
    end
  end
end
