# frozen_string_literal: true

module Mailchimp
  module Batches
    module Types
      class CreateBatchesRequestOperationsItem < Internal::Types::Model
        field :body, -> { String }, optional: true, nullable: false

        field :headers, -> { Mailchimp::Batches::Types::CreateBatchesRequestOperationsItemHeaders }, optional: true, nullable: false

        field :method_, -> { Mailchimp::Batches::Types::CreateBatchesRequestOperationsItemMethod }, optional: false, nullable: false, api_name: "method"

        field :operation_id, -> { String }, optional: true, nullable: false

        field :params, -> { Mailchimp::Batches::Types::CreateBatchesRequestOperationsItemParams }, optional: true, nullable: false

        field :path, -> { String }, optional: false, nullable: false
      end
    end
  end
end
