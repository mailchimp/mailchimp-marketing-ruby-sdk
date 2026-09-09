# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class UpdateWebhookListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :webhook_id, -> { String }, optional: false, nullable: false

        field :body, -> { Mailchimp::Types::AddWebhook }, optional: false, nullable: false
      end
    end
  end
end
