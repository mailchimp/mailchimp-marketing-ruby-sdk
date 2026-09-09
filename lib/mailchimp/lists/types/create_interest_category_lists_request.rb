# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateInterestCategoryListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :display_order, -> { Integer }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :type, -> { Mailchimp::Lists::Types::CreateInterestCategoryListsRequestType }, optional: false, nullable: false
      end
    end
  end
end
