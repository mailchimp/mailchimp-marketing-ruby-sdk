# frozen_string_literal: true

module Mailchimp
  module BatchWebhooks
    module Types
      class DeleteBatchWebhooksRequest < Internal::Types::Model
        field :batch_webhook_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
