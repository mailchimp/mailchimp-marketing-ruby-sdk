# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateSegmentMemberListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :segment_id, -> { String }, optional: false, nullable: false

        field :email_address, -> { String }, optional: false, nullable: false
      end
    end
  end
end
