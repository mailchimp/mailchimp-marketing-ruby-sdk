# frozen_string_literal: true

module Mailchimp
  module Root
    module Types
      # Date of first payment for monthly plans.
      class ListRootResponseFirstPayment < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Root::Types::ListRootResponseFirstPaymentOne }
      end
    end
  end
end
