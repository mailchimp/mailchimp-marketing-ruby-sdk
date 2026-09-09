# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class DeleteCampaignsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
