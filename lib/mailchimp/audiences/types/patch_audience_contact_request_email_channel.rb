# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class PatchAudienceContactRequestEmailChannel < Internal::Types::Model
        field :email, -> { String }, optional: true, nullable: false

        field :marketing_consent, -> { Mailchimp::Audiences::Types::PatchAudienceContactRequestEmailChannelMarketingConsent }, optional: true, nullable: false
      end
    end
  end
end
