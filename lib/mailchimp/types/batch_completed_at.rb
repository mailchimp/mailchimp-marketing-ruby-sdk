# frozen_string_literal: true

module Mailchimp
  module Types
    # The date and time when all operations in the batch request completed in ISO 8601 format.
    class BatchCompletedAt < Internal::Types::Model
      extend Mailchimp::Internal::Types::Union

      member -> { String }

      member -> { Mailchimp::Types::BatchCompletedAtOne }
    end
  end
end
