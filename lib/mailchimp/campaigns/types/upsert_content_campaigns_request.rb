# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class UpsertContentCampaignsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :body, -> { Mailchimp::Types::CampaignContent }, optional: false, nullable: false
      end
    end
  end
end
