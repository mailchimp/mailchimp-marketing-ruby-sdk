# frozen_string_literal: true

module Mailchimp
  module Types
    # This object's keys are merge tags (like FNAME). It's values are the values to be added to the merge field.
    class ClickDetailMemberMergeFieldsValue < Internal::Types::Model
      extend Mailchimp::Internal::Types::Union

      member -> { Mailchimp::Types::ClickDetailMemberMergeFieldsValueAddr1 }

      member -> { String }

      member -> { Integer }
    end
  end
end
