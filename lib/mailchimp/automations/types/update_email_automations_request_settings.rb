# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # Settings for the campaign including the email subject, from name, and from email address.
      class UpdateEmailAutomationsRequestSettings < Internal::Types::Model
        field :from_name, -> { String }, optional: true, nullable: false

        field :preview_text, -> { String }, optional: true, nullable: false

        field :reply_to, -> { String }, optional: true, nullable: false

        field :subject_line, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
