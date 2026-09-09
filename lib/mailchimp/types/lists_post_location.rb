# frozen_string_literal: true

module Mailchimp
  module Types
    # Subscriber location information.
    class ListsPostLocation < Internal::Types::Model
      field :country_code, -> { String }, optional: true, nullable: false

      field :dstoff, -> { Integer }, optional: true, nullable: false

      field :gmtoff, -> { Integer }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: true, nullable: false

      field :longitude, -> { Integer }, optional: true, nullable: false

      field :timezone, -> { String }, optional: true, nullable: false
    end
  end
end
