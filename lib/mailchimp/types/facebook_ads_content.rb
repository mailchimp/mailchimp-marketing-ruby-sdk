# frozen_string_literal: true

module Mailchimp
  module Types
    class FacebookAdsContent < Internal::Types::Model
      field :attachments, -> { Internal::Types::Array[Mailchimp::Types::FacebookAdsContentAttachmentsItem] }, optional: true, nullable: false

      field :call_to_action, -> { String }, optional: true, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :image_url, -> { String }, optional: true, nullable: false

      field :link_url, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false
    end
  end
end
