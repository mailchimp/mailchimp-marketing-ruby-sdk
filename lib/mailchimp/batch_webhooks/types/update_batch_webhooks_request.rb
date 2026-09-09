# frozen_string_literal: true

module Mailchimp
  module BatchWebhooks
    module Types
      class UpdateBatchWebhooksRequest < Internal::Types::Model
        field :batch_webhook_id, -> { String }, optional: false, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
