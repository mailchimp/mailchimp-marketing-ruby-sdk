# frozen_string_literal: true

module Mailchimp
  module SmsCampaigns
    module Types
      class GetContentSmsCampaignsRequest < Internal::Types::Model
        field :sms_campaign_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
