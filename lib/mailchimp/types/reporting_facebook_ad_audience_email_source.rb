# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdAudienceEmailSource < Internal::Types::Model
      field :is_segment, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :list_name, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :segment_type, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
