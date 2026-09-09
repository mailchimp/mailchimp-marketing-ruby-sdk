# frozen_string_literal: true

module Mailchimp
  module Types
    # Assign subscribers to interests to group them together. Interests are referred to as 'group names' in the
    # Mailchimp application.
    class Interest < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::InterestLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :category_id, -> { String }, optional: true, nullable: false

      field :display_order, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :subscriber_count, -> { String }, optional: true, nullable: false
    end
  end
end
