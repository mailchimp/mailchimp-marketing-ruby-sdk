# frozen_string_literal: true

module Mailchimp
  module Types
    # A contact's current consent status for SMS marketing communications. See the [Audiences (BETA)
    # documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported
    # values.
    class AudiencesContactSmsChannelMarketingConsent < Internal::Types::Model
      field :source, -> { Mailchimp::Types::AudiencesContactSmsChannelMarketingConsentSource }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::AudiencesContactSmsChannelMarketingConsentStatus }, optional: true, nullable: false

      field :captured_at, -> { String }, optional: true, nullable: false
    end
  end
end
