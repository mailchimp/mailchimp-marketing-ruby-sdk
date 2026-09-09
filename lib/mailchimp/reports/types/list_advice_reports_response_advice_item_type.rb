# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      module ListAdviceReportsResponseAdviceItemType
        extend Mailchimp::Internal::Types::Enum

        NEGATIVE = "negative"
        POSITIVE = "positive"
        NEUTRAL = "neutral"
      end
    end
  end
end
