# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Member activity events.
      class ListMemberActivityListsResponseActivityItem < Internal::Types::Model
        field :action, -> { String }, optional: true, nullable: false

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :parent_campaign, -> { String }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :type, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
