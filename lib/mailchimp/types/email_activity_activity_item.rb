# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of the interaction with the campaign.
    class EmailActivityActivityItem < Internal::Types::Model
      field :action, -> { String }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :timestamp, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
