# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateMergeFieldListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :default_value, -> { String }, optional: true, nullable: false

        field :display_order, -> { Integer }, optional: true, nullable: false

        field :help_text, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :options, -> { Mailchimp::Lists::Types::CreateMergeFieldListsRequestOptions }, optional: true, nullable: false

        field :public, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :tag, -> { String }, optional: true, nullable: false

        field :type, -> { Mailchimp::Lists::Types::CreateMergeFieldListsRequestType }, optional: false, nullable: false
      end
    end
  end
end
