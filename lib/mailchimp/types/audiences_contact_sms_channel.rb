# frozen_string_literal: true

module Mailchimp
  module Types
    class AudiencesContactSmsChannel < Internal::Types::Model
      field :effective_subscription_status, -> { Mailchimp::Types::AudiencesContactSmsChannelEffectiveSubscriptionStatus }, optional: true, nullable: false

      field :marketing_consent, -> { Mailchimp::Types::AudiencesContactSmsChannelMarketingConsent }, optional: true, nullable: false

      field :sms_phone, -> { String }, optional: true, nullable: false

      field :source, -> { Mailchimp::Types::AudiencesContactSmsChannelSource }, optional: true, nullable: false

      field :hashed_sms_phone, -> { String }, optional: true, nullable: false
    end
  end
end
