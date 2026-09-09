# frozen_string_literal: true

module Mailchimp
  module Types
    # The conditions of the segment. Static segments (tags) and fuzzy segments don't have conditions.
    class ListOptions < Internal::Types::Model
      field :conditions, -> { Internal::Types::Array[Mailchimp::Types::SegmentTypeItem] }, optional: true, nullable: false

      field :match, -> { Mailchimp::Types::ListOptionsMatch }, optional: true, nullable: false
    end
  end
end
