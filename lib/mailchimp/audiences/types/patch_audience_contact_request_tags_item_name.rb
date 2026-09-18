# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class PatchAudienceContactRequestTagsItemName < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :status, -> { Mailchimp::Audiences::Types::PatchAudienceContactRequestTagsItemNameStatus }, optional: false, nullable: false
      end
    end
  end
end
