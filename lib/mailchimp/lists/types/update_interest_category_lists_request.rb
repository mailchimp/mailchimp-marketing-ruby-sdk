# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class UpdateInterestCategoryListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :interest_category_id, -> { String }, optional: false, nullable: false

        field :display_order, -> { Integer }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :type, -> { Mailchimp::Lists::Types::UpdateInterestCategoryListsRequestType }, optional: true, nullable: false
      end
    end
  end
end
