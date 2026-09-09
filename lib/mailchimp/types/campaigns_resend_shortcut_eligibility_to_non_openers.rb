# frozen_string_literal: true

module Mailchimp
  module Types
    # Determines if the campaign qualifies to be resent to non-openers.
    class CampaignsResendShortcutEligibilityToNonOpeners < Internal::Types::Model
      field :is_eligible, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :reason, -> { String }, optional: true, nullable: false
    end
  end
end
