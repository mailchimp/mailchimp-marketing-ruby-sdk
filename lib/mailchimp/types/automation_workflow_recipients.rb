# frozen_string_literal: true

module Mailchimp
  module Types
    # List settings for the Automation.
    class AutomationWorkflowRecipients < Internal::Types::Model
      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :list_name, -> { String }, optional: true, nullable: false

      field :segment_opts, -> { Internal::Types::Array[Mailchimp::Types::SegmentTypeItem] }, optional: true, nullable: false

      field :store_id, -> { String }, optional: true, nullable: false
    end
  end
end
