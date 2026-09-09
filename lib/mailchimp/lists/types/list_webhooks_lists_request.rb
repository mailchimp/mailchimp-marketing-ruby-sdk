# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class ListWebhooksListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
