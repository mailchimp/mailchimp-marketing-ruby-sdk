# frozen_string_literal: true

module Mailchimp
  module Types
    # Determines if the campaign qualifies to be resent to non-purchasers.
    class CampaignsResendShortcutEligibilityToNonPurchasers < Internal::Types::Model
      field :is_eligible, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :reason, -> { String }, optional: true, nullable: false
    end
  end
end
