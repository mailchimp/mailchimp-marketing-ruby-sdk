# frozen_string_literal: true

module Mailchimp
  module BatchWebhooks
    module Types
      class CreateBatchWebhooksRequest < Internal::Types::Model
        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
