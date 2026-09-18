# frozen_string_literal: true

module Mailchimp
  module Types
    # A contact's current consent status for email marketing communications. See the [Audiences (BETA)
    # documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported
    # values.
    class AudiencesContactEmailChannelMarketingConsent < Internal::Types::Model
      field :source, -> { Mailchimp::Types::AudiencesContactEmailChannelMarketingConsentSource }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::AudiencesContactEmailChannelMarketingConsentStatus }, optional: true, nullable: false

      field :captured_at, -> { String }, optional: true, nullable: false
    end
  end
end
