# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      module ListClickDetailsReportsRequestSortField
        extend Mailchimp::Internal::Types::Enum

        TOTAL_CLICKS = "total_clicks"
        UNIQUE_CLICKS = "unique_clicks"
      end
    end
  end
end
