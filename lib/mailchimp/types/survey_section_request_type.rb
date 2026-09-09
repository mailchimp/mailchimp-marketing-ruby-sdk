# frozen_string_literal: true

module Mailchimp
  module Types
    module SurveySectionRequestType
      extend Mailchimp::Internal::Types::Enum

      INTRODUCTION = "introduction"
      CONTEXT = "context"
      QUESTION = "question"
    end
  end
end
