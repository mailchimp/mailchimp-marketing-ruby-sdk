# frozen_string_literal: true

module Mailchimp
  module Types
    # Interest categories organize interests, which are used to group subscribers based on their preferences. These
    # correspond to Group Titles the application.
    class InterestCategory < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::InterestCategoryLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :display_order, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::InterestCategoryType }, optional: true, nullable: false
    end
  end
end
