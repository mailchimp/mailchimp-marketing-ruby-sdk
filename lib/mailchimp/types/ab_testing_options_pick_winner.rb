# frozen_string_literal: true

module Mailchimp
  module Types
    module AbTestingOptionsPickWinner
      extend Mailchimp::Internal::Types::Enum

      OPENS = "opens"
      CLICKS = "clicks"
      MANUAL = "manual"
    end
  end
end
