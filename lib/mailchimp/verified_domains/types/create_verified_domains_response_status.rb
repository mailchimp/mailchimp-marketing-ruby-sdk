# frozen_string_literal: true

module Mailchimp
  module VerifiedDomains
    module Types
      module CreateVerifiedDomainsResponseStatus
        extend Mailchimp::Internal::Types::Enum

        VERIFICATION_IN_PROGRESS = "VERIFICATION_IN_PROGRESS"
        VERIFIED = "VERIFIED"
        EXPIRED = "EXPIRED"
        ERROR = "ERROR"
        AUTHENTICATION_IN_PROGRESS = "AUTHENTICATION_IN_PROGRESS"
        AUTHENTICATION_ERROR = "AUTHENTICATION_ERROR"
        AUTHENTICATED = "AUTHENTICATED"
      end
    end
  end
end
