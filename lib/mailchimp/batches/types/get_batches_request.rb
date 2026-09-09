# frozen_string_literal: true

module Mailchimp
  module Batches
    module Types
      class GetBatchesRequest < Internal::Types::Model
        field :batch_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
