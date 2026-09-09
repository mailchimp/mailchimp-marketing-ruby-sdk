# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      module ListMemberActivityListsRequestActionItem
        extend Mailchimp::Internal::Types::Enum

        ABUSE = "abuse"
        BOUNCE = "bounce"
        CLICK = "click"
        OPEN = "open"
        SENT = "sent"
        UNSUB = "unsub"
        ECOMM = "ecomm"
      end
    end
  end
end
