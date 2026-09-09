# frozen_string_literal: true

module Mailchimp
  module Types
    # Additional content properties.
    class SmsCampaignContentProperties < Internal::Types::Model
      field :content_type, -> { String }, optional: true, nullable: false

      field :sender, -> { String }, optional: true, nullable: false

      field :optout_message_language, -> { String }, optional: true, nullable: false
    end
  end
end
