# frozen_string_literal: true

module Mailchimp
  module Types
    module InterestCategoryType
      extend Mailchimp::Internal::Types::Enum

      CHECKBOXES = "checkboxes"
      DROPDOWN = "dropdown"
      RADIO = "radio"
      HIDDEN = "hidden"
    end
  end
end
