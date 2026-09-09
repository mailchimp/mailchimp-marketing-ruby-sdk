# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Subscriber location information.
      class CreateMemberListsRequestLocation < Internal::Types::Model
        field :latitude, -> { Mailchimp::Lists::Types::CreateMemberListsRequestLocationLatitude }, optional: true, nullable: false

        field :longitude, -> { Mailchimp::Lists::Types::CreateMemberListsRequestLocationLongitude }, optional: true, nullable: false
      end
    end
  end
end
