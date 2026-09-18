# frozen_string_literal: true

module Mailchimp
  module Types
    module AudiencesContactSmsChannelMarketingConsentStatus
      extend Mailchimp::Internal::Types::Enum

      CONSENTED = "consented"
      CONFIRMED = "confirmed"
      DENIED = "denied"
      UNKNOWN = "unknown"
    end
  end
end
