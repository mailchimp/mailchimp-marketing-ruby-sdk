# frozen_string_literal: true

module Mailchimp
  module Types
    # List settings for the campaign.
    class CampaignRecipients < Internal::Types::Model
      field :list_id, -> { String }, optional: false, nullable: false

      field :list_name, -> { String }, optional: true, nullable: false

      field :recipient_count, -> { Integer }, optional: true, nullable: false

      field :segment_opts, -> { Mailchimp::Types::CampaignRecipientsSegmentOpts }, optional: true, nullable: false

      field :segment_text, -> { String }, optional: true, nullable: false
    end
  end
end
