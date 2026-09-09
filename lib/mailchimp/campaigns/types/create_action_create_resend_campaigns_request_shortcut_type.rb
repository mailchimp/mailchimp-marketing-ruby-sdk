# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      module CreateActionCreateResendCampaignsRequestShortcutType
        extend Mailchimp::Internal::Types::Enum

        TO_NON_OPENERS = "to_non_openers"
        TO_NEW_SUBSCRIBERS = "to_new_subscribers"
        TO_NON_CLICKERS = "to_non_clickers"
        TO_NON_PURCHASERS = "to_non_purchasers"
      end
    end
  end
end
