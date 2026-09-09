# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class ListMembersListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :email_type, -> { String }, optional: true, nullable: false

        field :status, -> { Mailchimp::Lists::Types::ListMembersListsRequestStatus }, optional: true, nullable: false

        field :since_timestamp_opt, -> { String }, optional: true, nullable: false

        field :before_timestamp_opt, -> { String }, optional: true, nullable: false

        field :since_last_changed, -> { String }, optional: true, nullable: false

        field :before_last_changed, -> { String }, optional: true, nullable: false

        field :unique_email_id, -> { String }, optional: true, nullable: false

        field :vip_only, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :interest_category_id, -> { String }, optional: true, nullable: false

        field :interest_ids, -> { String }, optional: true, nullable: false

        field :interest_match, -> { Mailchimp::Lists::Types::ListMembersListsRequestInterestMatch }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::Lists::Types::ListMembersListsRequestSortField }, optional: true, nullable: false

        field :sort_dir, -> { Mailchimp::Lists::Types::ListMembersListsRequestSortDir }, optional: true, nullable: false

        field :since_last_campaign, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :unsubscribed_since, -> { String }, optional: true, nullable: false
      end
    end
  end
end
