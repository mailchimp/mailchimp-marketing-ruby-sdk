# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class CreateAudienceContactRequestTagsItem < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestTagsItemName }
      end
    end
  end
end
