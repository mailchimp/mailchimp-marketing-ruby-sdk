# frozen_string_literal: true

module Mailchimp
  module Batches
    module Types
      class DeleteBatchesRequest < Internal::Types::Model
        field :batch_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
