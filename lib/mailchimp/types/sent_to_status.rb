# frozen_string_literal: true

module Mailchimp
  module Types
    module SentToStatus
      extend Mailchimp::Internal::Types::Enum

      SENT = "sent"
      HARD = "hard"
      SOFT = "soft"
    end
  end
end
