# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of a specific list's growth activity for a specific month and year.
    class GrowthHistory < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::GrowthHistoryLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :cleaned, -> { Integer }, optional: true, nullable: false

      field :deleted, -> { Integer }, optional: true, nullable: false

      field :existing, -> { Integer }, optional: true, nullable: false

      field :imports, -> { Integer }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :month, -> { String }, optional: true, nullable: false

      field :optins, -> { Integer }, optional: true, nullable: false

      field :pending, -> { Integer }, optional: true, nullable: false

      field :reconfirm, -> { Integer }, optional: true, nullable: false

      field :subscribed, -> { Integer }, optional: true, nullable: false

      field :transactional, -> { Integer }, optional: true, nullable: false

      field :unsubscribed, -> { Integer }, optional: true, nullable: false
    end
  end
end
