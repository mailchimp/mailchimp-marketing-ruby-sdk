# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      # This object's keys are merge tags (like FNAME). It's values are the values to be added to the merge field.
      class PatchAudienceContactRequestMergeFieldsValue < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Mailchimp::Audiences::Types::PatchAudienceContactRequestMergeFieldsValueAddr1 }

        member -> { String }

        member -> { Integer }
      end
    end
  end
end
