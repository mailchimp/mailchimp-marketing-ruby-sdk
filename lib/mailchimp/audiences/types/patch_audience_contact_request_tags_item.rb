# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class PatchAudienceContactRequestTagsItem < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Audiences::Types::PatchAudienceContactRequestTagsItemName }
      end
    end
  end
end
