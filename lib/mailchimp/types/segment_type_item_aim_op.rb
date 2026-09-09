# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemAimOp
      extend Mailchimp::Internal::Types::Enum

      OPEN = "open"
      CLICK = "click"
      SENT = "sent"
      NOOPEN = "noopen"
      NOCLICK = "noclick"
      NOSENT = "nosent"
    end
  end
end
