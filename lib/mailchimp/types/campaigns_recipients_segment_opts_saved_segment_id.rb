# frozen_string_literal: true

module Mailchimp
  module Types
    # The id for an existing saved segment.
    class CampaignsRecipientsSegmentOptsSavedSegmentID < Internal::Types::Model
      extend Mailchimp::Internal::Types::Union

      member -> { Integer }

      member -> { String }
    end
  end
end
