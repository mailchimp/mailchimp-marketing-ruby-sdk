# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      module UpdateEmailAutomationsRequestDelayAction
        extend Mailchimp::Internal::Types::Enum

        SIGNUP = "signup"
        ECOMM_ABANDONED_BROWSE = "ecomm_abandoned_browse"
        ECOMM_ABANDONED_CART = "ecomm_abandoned_cart"
      end
    end
  end
end
