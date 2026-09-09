# frozen_string_literal: true

module Mailchimp
  module Batches
    module Types
      # A summary of batch requests that have been made.
      class ListBatchesResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Batches::Types::ListBatchesResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :batches, -> { Internal::Types::Array[Mailchimp::Types::Batch] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
