# frozen_string_literal: true

module Mailchimp
  module SmsCampaigns
    module Types
      class UpdateSmsCampaignsRequest < Internal::Types::Model
        field :sms_campaign_id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :folder_id, -> { String }, optional: true, nullable: false

        field :segments, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

        field :excluded_segments, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false
      end
    end
  end
end
