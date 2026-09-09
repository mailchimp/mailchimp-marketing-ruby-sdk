# frozen_string_literal: true

module Mailchimp
  module Types
    module ListType
      extend Mailchimp::Internal::Types::Enum

      SAVED = "saved"
      STATIC = "static"
      FUZZY = "fuzzy"
    end
  end
end
