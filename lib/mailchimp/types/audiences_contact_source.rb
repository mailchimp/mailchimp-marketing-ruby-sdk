# frozen_string_literal: true

module Mailchimp
  module Types
    # The source from which the parent's entity was created.
    class AudiencesContactSource < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
