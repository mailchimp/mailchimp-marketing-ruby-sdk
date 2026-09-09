# frozen_string_literal: true

module Mailchimp
  module Types
    # The original campaign that was resent.
    class CampaignsResendShortcutUsageOriginalCampaign < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :shortcut_type, -> { Mailchimp::Types::CampaignsResendShortcutUsageOriginalCampaignShortcutType }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
