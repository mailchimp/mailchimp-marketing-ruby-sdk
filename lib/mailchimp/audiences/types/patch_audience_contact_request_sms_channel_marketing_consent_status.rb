# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      module PatchAudienceContactRequestSmsChannelMarketingConsentStatus
        extend Mailchimp::Internal::Types::Enum

        CONSENTED = "consented"
        CONFIRMED = "confirmed"
        DENIED = "denied"
        UNKNOWN = "unknown"
      end
    end
  end
end
