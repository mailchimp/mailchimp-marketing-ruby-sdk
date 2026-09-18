# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      module CreateAudienceContactRequestDataMode
        extend Mailchimp::Internal::Types::Enum

        HISTORICAL = "historical"
        LIVE = "live"
      end
    end
  end
end
