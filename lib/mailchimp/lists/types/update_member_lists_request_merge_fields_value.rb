# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # This object's keys are merge tags (like FNAME). It's values are the values to be added to the merge field.
      class UpdateMemberListsRequestMergeFieldsValue < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Mailchimp::Lists::Types::UpdateMemberListsRequestMergeFieldsValueAddr1 }

        member -> { String }

        member -> { Integer }
      end
    end
  end
end
