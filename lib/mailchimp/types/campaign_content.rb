# frozen_string_literal: true

module Mailchimp
  module Types
    # The HTML and plain-text content for a campaign.
    class CampaignContent < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::CampaignContentLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :archive_html, -> { String }, optional: true, nullable: false

      field :html, -> { String }, optional: true, nullable: false

      field :plain_text, -> { String }, optional: true, nullable: false

      field :variate_contents, -> { Internal::Types::Array[Mailchimp::Types::CampaignContentVariateContentsItem] }, optional: true, nullable: false
    end
  end
end
