# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about campaigns related through shortcuts.
    class CampaignsResendShortcutUsage < Internal::Types::Model
      field :original_campaign, -> { Mailchimp::Types::CampaignsResendShortcutUsageOriginalCampaign }, optional: true, nullable: false

      field :shortcut_campaigns, -> { Internal::Types::Array[Mailchimp::Types::CampaignsResendShortcutUsageShortcutCampaignsItem] }, optional: true, nullable: false
    end
  end
end
