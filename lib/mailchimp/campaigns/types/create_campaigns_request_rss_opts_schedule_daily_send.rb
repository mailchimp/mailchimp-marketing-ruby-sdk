# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # The days of the week to send a daily RSS Campaign.
      class CreateCampaignsRequestRssOptsScheduleDailySend < Internal::Types::Model
        field :friday, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :monday, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :saturday, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :sunday, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :thursday, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :tuesday, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :wednesday, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
