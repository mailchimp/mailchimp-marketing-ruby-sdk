# frozen_string_literal: true

module Mailchimp
  module Types
    # A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience.
    class MergeField < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::MergeFieldLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :default_value, -> { String }, optional: true, nullable: false

      field :display_order, -> { Integer }, optional: true, nullable: false

      field :help_text, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :merge_field_limit, -> { Integer }, optional: true, nullable: false

      field :merge_id, -> { Integer }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :options, -> { Mailchimp::Types::MergeFieldOptions }, optional: true, nullable: false

      field :public, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :tag, -> { String }, optional: true, nullable: false

      field :total_items, -> { Integer }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::MergeFieldType }, optional: true, nullable: false
    end
  end
end
