# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      module CreateAudienceContactRequestSmsChannelMarketingConsentStatus
        extend Mailchimp::Internal::Types::Enum

        CONSENTED = "consented"
        CONFIRMED = "confirmed"
        UNKNOWN = "unknown"
      end
    end
  end
end
