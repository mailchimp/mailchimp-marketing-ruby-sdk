# frozen_string_literal: true

module Mailchimp
  module Types
    module BatchStatus
      extend Mailchimp::Internal::Types::Enum

      PENDING = "pending"
      PREPROCESSING = "preprocessing"
      STARTED = "started"
      FINALIZING = "finalizing"
      FINISHED = "finished"
    end
  end
end
