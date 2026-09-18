# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class CreateAudienceContactRequestTagsItemName < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :status, -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestTagsItemNameStatus }, optional: false, nullable: false
      end
    end
  end
end
