# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # The settings specific to A/B test campaigns.
      class CreateCampaignsRequestVariateSettings < Internal::Types::Model
        field :from_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :reply_to_addresses, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :send_times, -> { Internal::Types::Array[Mailchimp::Campaigns::Types::CreateCampaignsRequestVariateSettingsSendTimesItem] }, optional: true, nullable: false

        field :subject_lines, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :test_size, -> { Integer }, optional: true, nullable: false

        field :wait_time, -> { Integer }, optional: true, nullable: false

        field :winner_criteria, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestVariateSettingsWinnerCriteria }, optional: false, nullable: false
      end
    end
  end
end
