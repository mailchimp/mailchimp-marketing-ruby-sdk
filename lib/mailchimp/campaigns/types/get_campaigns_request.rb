# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class GetCampaignsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :include_resend_shortcut_eligibility, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_resend_shortcut_usage, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
