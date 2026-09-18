# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      # A contact's current consent status for email marketing communications. See the [Audiences (BETA)
      # documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported
      # values.
      class CreateAudienceContactRequestEmailChannelMarketingConsent < Internal::Types::Model
        field :status, -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestEmailChannelMarketingConsentStatus }, optional: true, nullable: false
      end
    end
  end
end
