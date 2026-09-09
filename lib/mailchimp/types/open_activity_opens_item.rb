# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of the interaction with the campaign.
    class OpenActivityOpensItem < Internal::Types::Model
      field :is_proxy_open, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :timestamp, -> { String }, optional: true, nullable: false
    end
  end
end
