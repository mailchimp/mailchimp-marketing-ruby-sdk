# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      # A contact's current consent status for SMS marketing communications. See the [Audiences (BETA)
      # documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported
      # values.
      class CreateAudienceContactRequestSmsChannelMarketingConsent < Internal::Types::Model
        field :source, -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestSmsChannelMarketingConsentSource }, optional: true, nullable: false

        field :status, -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestSmsChannelMarketingConsentStatus }, optional: true, nullable: false

        field :captured_at, -> { String }, optional: true, nullable: false
      end
    end
  end
end
