# frozen_string_literal: true

module Mailchimp
  module Types
    # The status of a batch request
    class Batch < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::BatchLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :completed_at, -> { Mailchimp::Types::BatchCompletedAt }, optional: true, nullable: false

      field :errored_operations, -> { Integer }, optional: true, nullable: false

      field :finished_operations, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :response_body_url, -> { String }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::BatchStatus }, optional: true, nullable: false

      field :submitted_at, -> { String }, optional: true, nullable: false

      field :total_operations, -> { Integer }, optional: true, nullable: false
    end
  end
end
