# frozen_string_literal: true

module Mailchimp
  module Types
    # List settings for the campaign.
    class AutomationWorkflowEmailRecipients < Internal::Types::Model
      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :list_name, -> { String }, optional: true, nullable: false

      field :recipient_count, -> { Integer }, optional: true, nullable: false

      field :segment_opts, -> { Mailchimp::Types::AutomationWorkflowEmailRecipientsSegmentOpts }, optional: true, nullable: false

      field :segment_text, -> { String }, optional: true, nullable: false
    end
  end
end
