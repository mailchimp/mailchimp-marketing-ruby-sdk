# frozen_string_literal: true

module Mailchimp
  module Types
    class CampaignsResendShortcutUsageShortcutCampaignsItem < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :send_time, -> { String }, optional: true, nullable: false

      field :shortcut_type, -> { Mailchimp::Types::CampaignsResendShortcutUsageShortcutCampaignsItemShortcutType }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::CampaignsResendShortcutUsageShortcutCampaignsItemStatus }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
