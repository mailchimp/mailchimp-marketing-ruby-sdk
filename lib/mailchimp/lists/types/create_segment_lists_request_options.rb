# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments
      # don't have conditions.
      class CreateSegmentListsRequestOptions < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[Mailchimp::Types::SegmentTypeItem] }, optional: true, nullable: false

        field :match, -> { Mailchimp::Lists::Types::CreateSegmentListsRequestOptionsMatch }, optional: true, nullable: false
      end
    end
  end
end
