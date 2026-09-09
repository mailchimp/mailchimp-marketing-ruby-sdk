# frozen_string_literal: true

module Mailchimp
  module Types
    # The settings specific to A/B test campaigns.
    class CampaignsVariateSettings < Internal::Types::Model
      field :combinations, -> { Internal::Types::Array[Mailchimp::Types::CampaignsVariateSettingsCombinationsItem] }, optional: true, nullable: false

      field :contents, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :from_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :reply_to_addresses, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :send_times, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :subject_lines, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :test_size, -> { Integer }, optional: true, nullable: false

      field :wait_time, -> { Integer }, optional: true, nullable: false

      field :winner_criteria, -> { Mailchimp::Types::CampaignsVariateSettingsWinnerCriteria }, optional: true, nullable: false

      field :winning_campaign_id, -> { String }, optional: true, nullable: false

      field :winning_combination_id, -> { String }, optional: true, nullable: false
    end
  end
end
