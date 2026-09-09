# frozen_string_literal: true

module Mailchimp
  module Types
    # The settings for the Automation workflow.
    class AutomationWorkflowSettings < Internal::Types::Model
      field :authenticate, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :auto_footer, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :from_name, -> { String }, optional: true, nullable: false

      field :inline_css, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :reply_to, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :to_name, -> { String }, optional: true, nullable: false

      field :use_conversation, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
