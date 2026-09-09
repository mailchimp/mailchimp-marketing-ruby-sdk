# frozen_string_literal: true

module Mailchimp
  module AccountExports
    module Types
      class CreateAccountExportsRequest < Internal::Types::Model
        field :include_stages, -> { Internal::Types::Array[Mailchimp::AccountExports::Types::CreateAccountExportsRequestIncludeStagesItem] }, optional: false, nullable: false

        field :since_timestamp, -> { String }, optional: true, nullable: false
      end
    end
  end
end
