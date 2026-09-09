# frozen_string_literal: true

module Mailchimp
  module Types
    class CampaignContentVariateContentsItem < Internal::Types::Model
      field :content_label, -> { String }, optional: true, nullable: false

      field :html, -> { String }, optional: true, nullable: false

      field :plain_text, -> { String }, optional: true, nullable: false
    end
  end
end
