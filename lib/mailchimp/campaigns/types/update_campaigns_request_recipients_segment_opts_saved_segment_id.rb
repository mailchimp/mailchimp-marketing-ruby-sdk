# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # The id for an existing saved segment.
      class UpdateCampaignsRequestRecipientsSegmentOptsSavedSegmentID < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Integer }

        member -> { String }
      end
    end
  end
end
