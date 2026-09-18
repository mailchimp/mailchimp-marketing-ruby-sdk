# frozen_string_literal: true

module Mailchimp
  module Types
    class AudiencesContactEmailChannel < Internal::Types::Model
      field :effective_subscription_status, -> { Mailchimp::Types::AudiencesContactEmailChannelEffectiveSubscriptionStatus }, optional: true, nullable: false

      field :email, -> { String }, optional: true, nullable: false

      field :hashed_email, -> { String }, optional: true, nullable: false

      field :marketing_consent, -> { Mailchimp::Types::AudiencesContactEmailChannelMarketingConsent }, optional: true, nullable: false

      field :source, -> { Mailchimp::Types::AudiencesContactEmailChannelSource }, optional: true, nullable: false
    end
  end
end
