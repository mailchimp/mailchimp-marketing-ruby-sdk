# frozen_string_literal: true

module Mailchimp
  module BatchWebhooks
    module Types
      class GetBatchWebhooksRequest < Internal::Types::Model
        field :batch_webhook_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
