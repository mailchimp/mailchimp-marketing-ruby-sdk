# frozen_string_literal: true

module Mailchimp
  module Types
    # The content of an SMS campaign.
    class SmsCampaignContent < Internal::Types::Model
      field :message_body, -> { String }, optional: true, nullable: false

      field :estimated_segments, -> { Integer }, optional: true, nullable: false

      field :merge_fields, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :media, -> { Internal::Types::Array[Mailchimp::Types::SmsCampaignContentMediaItem] }, optional: true, nullable: false

      field :source, -> { Mailchimp::Types::SmsCampaignContentSource }, optional: true, nullable: false

      field :properties, -> { Mailchimp::Types::SmsCampaignContentProperties }, optional: true, nullable: false

      field :links, -> { Internal::Types::Array[Mailchimp::Types::SmsCampaignContentLinksItem] }, optional: true, nullable: false, api_name: "_links"
    end
  end
end
