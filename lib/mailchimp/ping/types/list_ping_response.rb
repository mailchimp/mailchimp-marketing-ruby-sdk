# frozen_string_literal: true

module Mailchimp
  module Ping
    module Types
      # API health status.
      class ListPingResponse < Internal::Types::Model
        field :health_status, -> { String }, optional: true, nullable: false
      end
    end
  end
end
