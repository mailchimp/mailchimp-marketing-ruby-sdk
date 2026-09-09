# frozen_string_literal: true

module Mailchimp
  module Internal
    module Types
      module Unknown
        include Mailchimp::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
