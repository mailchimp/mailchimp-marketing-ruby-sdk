# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # A summary of the comment feedback for a specific campaign.
      class ListFeedbackCampaignsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Campaigns::Types::ListFeedbackCampaignsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :feedback, -> { Internal::Types::Array[Mailchimp::Campaigns::Types::ListFeedbackCampaignsResponseFeedbackItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
