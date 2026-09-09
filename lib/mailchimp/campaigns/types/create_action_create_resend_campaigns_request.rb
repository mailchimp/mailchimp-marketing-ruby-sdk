# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class CreateActionCreateResendCampaignsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :shortcut_type, -> { Mailchimp::Campaigns::Types::CreateActionCreateResendCampaignsRequestShortcutType }, optional: true, nullable: false
      end
    end
  end
end
