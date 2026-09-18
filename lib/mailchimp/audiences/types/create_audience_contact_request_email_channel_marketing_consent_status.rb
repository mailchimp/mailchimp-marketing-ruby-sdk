# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      module CreateAudienceContactRequestEmailChannelMarketingConsentStatus
        extend Mailchimp::Internal::Types::Enum

        CONFIRMED = "confirmed"
        CONSENTED = "consented"
        DENIED = "denied"
        UNKNOWN = "unknown"
      end
    end
  end
end
