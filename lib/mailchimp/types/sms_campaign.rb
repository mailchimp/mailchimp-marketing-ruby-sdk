# frozen_string_literal: true

module Mailchimp
  module Types
    # A single SMS campaign.
    class SmsCampaign < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :web_id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false

      field :channel, -> { String }, optional: true, nullable: false

      field :list_id, -> { Integer }, optional: true, nullable: false

      field :recipient_count, -> { Integer }, optional: true, nullable: false

      field :create_time, -> { String }, optional: true, nullable: false

      field :send_time, -> { String }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false

      field :expire_time, -> { String }, optional: true, nullable: false

      field :is_send_now, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :folder_id, -> { String }, optional: true, nullable: false

      field :segments, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

      field :excluded_segments, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

      field :links, -> { Internal::Types::Array[Mailchimp::Types::SmsCampaignLinksItem] }, optional: true, nullable: false, api_name: "_links"
    end
  end
end
