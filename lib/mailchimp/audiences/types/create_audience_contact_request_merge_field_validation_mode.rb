# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      module CreateAudienceContactRequestMergeFieldValidationMode
        extend Mailchimp::Internal::Types::Enum

        IGNORE_REQUIRED_CHECKS = "ignore_required_checks"
        STRICT = "strict"
      end
    end
  end
end
