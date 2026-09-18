# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      module PatchAudienceContactRequestEmailChannelMarketingConsentStatus
        extend Mailchimp::Internal::Types::Enum

        CONSENTED = "consented"
        DENIED = "denied"
        CONFIRMED = "confirmed"
        UNKNOWN = "unknown"
      end
    end
  end
end
