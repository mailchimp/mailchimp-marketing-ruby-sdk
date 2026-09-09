# frozen_string_literal: true

module Mailchimp
  module Types
    # Determines if the campaign qualifies for the Campaign Resend Shortcuts. Only included when query parameter
    # `include_resend_shortcuts` is `true`.
    class CampaignsResendShortcutEligibility < Internal::Types::Model
      field :to_new_subscribers, -> { Mailchimp::Types::CampaignsResendShortcutEligibilityToNewSubscribers }, optional: true, nullable: false

      field :to_non_clickers, -> { Mailchimp::Types::CampaignsResendShortcutEligibilityToNonClickers }, optional: true, nullable: false

      field :to_non_openers, -> { Mailchimp::Types::CampaignsResendShortcutEligibilityToNonOpeners }, optional: true, nullable: false

      field :to_non_purchasers, -> { Mailchimp::Types::CampaignsResendShortcutEligibilityToNonPurchasers }, optional: true, nullable: false
    end
  end
end
