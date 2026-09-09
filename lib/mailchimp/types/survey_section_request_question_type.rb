# frozen_string_literal: true

module Mailchimp
  module Types
    module SurveySectionRequestQuestionType
      extend Mailchimp::Internal::Types::Enum

      PICK_ONE = "pickOne"
      PICK_MANY = "pickMany"
      RANGE = "range"
      TEXT = "text"
      EMAIL = "email"
      CONTACT_INFORMATION = "contactInformation"
      DROPDOWN = "dropdown"
    end
  end
end
