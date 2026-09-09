# frozen_string_literal: true

module Mailchimp
  module Types
    module CampaignsResendShortcutUsageShortcutCampaignsItemShortcutType
      extend Mailchimp::Internal::Types::Enum

      NON_OPENERS = "non_openers"
      NEW_SUBSCRIBERS = "new_subscribers"
      NON_CLICKERS = "non_clickers"
      NON_PURCHASERS = "non_purchasers"
    end
  end
end
