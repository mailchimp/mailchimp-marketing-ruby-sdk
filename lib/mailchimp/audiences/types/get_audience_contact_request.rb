# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class GetAudienceContactRequest < Internal::Types::Model
        field :audience_id, -> { String }, optional: false, nullable: false

        field :contact_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
