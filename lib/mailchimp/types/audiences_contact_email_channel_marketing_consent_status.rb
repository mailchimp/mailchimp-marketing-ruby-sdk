# frozen_string_literal: true

module Mailchimp
  module Types
    module AudiencesContactEmailChannelMarketingConsentStatus
      extend Mailchimp::Internal::Types::Enum

      CONSENTED = "consented"
      DENIED = "denied"
      CONFIRMED = "confirmed"
      UNKNOWN = "unknown"
    end
  end
end
