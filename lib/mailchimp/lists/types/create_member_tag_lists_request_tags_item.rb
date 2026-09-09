# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Add or remove tags on a member by declaring a tag either active or inactive on a member.
      class CreateMemberTagListsRequestTagsItem < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :status, -> { Mailchimp::Lists::Types::CreateMemberTagListsRequestTagsItemStatus }, optional: false, nullable: false
      end
    end
  end
end
