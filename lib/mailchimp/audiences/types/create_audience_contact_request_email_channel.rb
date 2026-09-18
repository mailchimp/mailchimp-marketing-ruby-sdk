# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class CreateAudienceContactRequestEmailChannel < Internal::Types::Model
        field :email, -> { String }, optional: true, nullable: false

        field :marketing_consent, -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestEmailChannelMarketingConsent }, optional: true, nullable: false
      end
    end
  end
end
