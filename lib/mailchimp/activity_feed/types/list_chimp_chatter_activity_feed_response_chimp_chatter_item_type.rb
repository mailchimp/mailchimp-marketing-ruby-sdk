# frozen_string_literal: true

module Mailchimp
  module ActivityFeed
    module Types
      module ListChimpChatterActivityFeedResponseChimpChatterItemType
        extend Mailchimp::Internal::Types::Enum

        LISTS_NEW_SUBSCRIBER = "lists:new-subscriber"
        LISTS_UNSUBSCRIBES = "lists:unsubscribes"
        LISTS_PROFILE_UPDATES = "lists:profile-updates"
        CAMPAIGNS_FACEBOOK_LIKES = "campaigns:facebook-likes"
        CAMPAIGNS_FORWARD_TO_FRIEND = "campaigns:forward-to-friend"
        LISTS_IMPORTS = "lists:imports"
      end
    end
  end
end
