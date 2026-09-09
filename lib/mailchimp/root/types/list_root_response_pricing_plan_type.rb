# frozen_string_literal: true

module Mailchimp
  module Root
    module Types
      module ListRootResponsePricingPlanType
        extend Mailchimp::Internal::Types::Enum

        MONTHLY = "monthly"
        PAY_AS_YOU_GO = "pay_as_you_go"
        FOREVER_FREE = "forever_free"
      end
    end
  end
end
