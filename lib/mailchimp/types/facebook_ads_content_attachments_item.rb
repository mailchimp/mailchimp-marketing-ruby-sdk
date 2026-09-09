# frozen_string_literal: true

module Mailchimp
  module Types
    class FacebookAdsContentAttachmentsItem < Internal::Types::Model
      field :call_to_action, -> { String }, optional: true, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :image_url, -> { String }, optional: true, nullable: false

      field :link_url, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
