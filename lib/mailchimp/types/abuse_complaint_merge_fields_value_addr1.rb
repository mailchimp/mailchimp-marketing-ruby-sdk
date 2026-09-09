# frozen_string_literal: true

module Mailchimp
  module Types
    class AbuseComplaintMergeFieldsValueAddr1 < Internal::Types::Model
      field :addr1, -> { String }, optional: false, nullable: false

      field :addr2, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: false, nullable: false

      field :zip, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: true, nullable: false
    end
  end
end
