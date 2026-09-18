# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      # The source from which the parent's entity was created.
      class CreateAudienceContactRequestSmsChannelMarketingConsentSource < Internal::Types::Model
        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
