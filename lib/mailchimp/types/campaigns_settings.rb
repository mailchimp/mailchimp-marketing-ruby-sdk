# frozen_string_literal: true

module Mailchimp
  module Types
    # The settings for your campaign, including subject, from name, reply-to address, and more.
    class CampaignsSettings < Internal::Types::Model
      field :authenticate, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :auto_fb_post, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :auto_footer, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :auto_tweet, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :drag_and_drop, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :fb_comments, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :folder_id, -> { String }, optional: true, nullable: false

      field :from_name, -> { String }, optional: true, nullable: false

      field :inline_css, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :preview_text, -> { String }, optional: true, nullable: false

      field :reply_to, -> { String }, optional: true, nullable: false

      field :subject_line, -> { String }, optional: true, nullable: false

      field :template_id, -> { Integer }, optional: true, nullable: false

      field :timewarp, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :to_name, -> { String }, optional: true, nullable: false

      field :use_conversation, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
