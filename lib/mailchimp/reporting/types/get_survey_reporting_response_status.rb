# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      module GetSurveyReportingResponseStatus
        extend Mailchimp::Internal::Types::Enum

        PUBLISHED = "published"
        UNPUBLISHED = "unpublished"
      end
    end
  end
end
