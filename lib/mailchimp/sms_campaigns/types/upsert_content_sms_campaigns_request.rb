# frozen_string_literal: true

module Mailchimp
  module SmsCampaigns
    module Types
      class UpsertContentSmsCampaignsRequest < Internal::Types::Model
        field :sms_campaign_id, -> { String }, optional: false, nullable: false

        field :message_body, -> { String }, optional: false, nullable: false

        field :media, -> { Internal::Types::Array[Mailchimp::SmsCampaigns::Types::UpsertContentSmsCampaignsRequestMediaItem] }, optional: true, nullable: false
      end
    end
  end
end
