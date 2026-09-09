# frozen_string_literal: true

module Mailchimp
  module Types
    # A specific feedback message from a specific campaign.
    class CampaignFeedback < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::CampaignFeedbackLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :block_id, -> { Integer }, optional: true, nullable: false

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :created_by, -> { String }, optional: true, nullable: false

      field :feedback_id, -> { Integer }, optional: true, nullable: false

      field :is_complete, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :parent_id, -> { Integer }, optional: true, nullable: false

      field :source, -> { Mailchimp::Types::CampaignFeedbackSource }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false
    end
  end
end
