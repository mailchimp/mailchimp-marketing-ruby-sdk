# frozen_string_literal: true

module Mailchimp
  module Templates
    module Types
      class ListTemplatesRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :created_by, -> { String }, optional: true, nullable: false

        field :since_date_created, -> { String }, optional: true, nullable: false

        field :before_date_created, -> { String }, optional: true, nullable: false

        field :type, -> { String }, optional: true, nullable: false

        field :category, -> { String }, optional: true, nullable: false

        field :folder_id, -> { String }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::Templates::Types::ListTemplatesRequestSortField }, optional: true, nullable: false

        field :content_type, -> { Mailchimp::Templates::Types::ListTemplatesRequestContentType }, optional: true, nullable: false

        field :sort_dir, -> { Mailchimp::Templates::Types::ListTemplatesRequestSortDir }, optional: true, nullable: false
      end
    end
  end
end
