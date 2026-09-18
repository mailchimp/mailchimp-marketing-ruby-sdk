# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class GetAudienceContactListRequest < Internal::Types::Model
        field :audience_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_since, -> { String }, optional: true, nullable: false

        field :updated_before, -> { String }, optional: true, nullable: false

        field :updated_since, -> { String }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::Audiences::Types::GetAudienceContactListRequestSortField }, optional: true, nullable: false

        field :sort_dir, -> { Mailchimp::Audiences::Types::GetAudienceContactListRequestSortDir }, optional: true, nullable: false
      end
    end
  end
end
