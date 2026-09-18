# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class PatchAudienceContactRequestSmsChannel < Internal::Types::Model
        field :marketing_consent, -> { Mailchimp::Audiences::Types::PatchAudienceContactRequestSmsChannelMarketingConsent }, optional: true, nullable: false

        field :sms_phone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
