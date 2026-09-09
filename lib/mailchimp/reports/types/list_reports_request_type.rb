# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      module ListReportsRequestType
        extend Mailchimp::Internal::Types::Enum

        REGULAR = "regular"
        PLAINTEXT = "plaintext"
        ABSPLIT = "absplit"
        RSS = "rss"
        VARIATE = "variate"
      end
    end
  end
end
