# frozen_string_literal: true

module Mailchimp
  module Types
    module FacebookAdStatus
      extend Mailchimp::Internal::Types::Enum

      SAVE = "save"
      PAUSED = "paused"
      SCHEDULE = "schedule"
      SCHEDULED = "scheduled"
      SENDING = "sending"
      SENT = "sent"
      CANCELED = "canceled"
      CANCELING = "canceling"
      ACTIVE = "active"
      DISCONNECTED = "disconnected"
      SOMEPAUSED = "somepaused"
      DRAFT = "draft"
      COMPLETED = "completed"
      PARTIAL_REJECTED = "partialRejected"
      PENDING = "pending"
      REJECTED = "rejected"
      PUBLISHED = "published"
      UNPUBLISHED = "unpublished"
    end
  end
end
