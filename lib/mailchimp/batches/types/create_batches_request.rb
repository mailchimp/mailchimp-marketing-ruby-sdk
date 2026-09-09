# frozen_string_literal: true

module Mailchimp
  module Batches
    module Types
      class CreateBatchesRequest < Internal::Types::Model
        field :operations, -> { Internal::Types::Array[Mailchimp::Batches::Types::CreateBatchesRequestOperationsItem] }, optional: false, nullable: false
      end
    end
  end
end
