# frozen_string_literal: true

module Mailchimp
  module Types
    # An object representing all segmentation options. This object should contain a `saved_segment_id` to use an
    # existing segment, or you can create a new segment by including both `match` and `conditions` options.
    class AutomationWorkflowEmailRecipientsSegmentOpts < Internal::Types::Model
      field :conditions, -> { Internal::Types::Array[Mailchimp::Types::SegmentTypeItem] }, optional: true, nullable: false

      field :match, -> { Mailchimp::Types::AutomationWorkflowEmailRecipientsSegmentOptsMatch }, optional: true, nullable: false

      field :prebuilt_segment_id, -> { String }, optional: true, nullable: false

      field :saved_segment_id, -> { Mailchimp::Types::AutomationWorkflowEmailRecipientsSegmentOptsSavedSegmentID }, optional: true, nullable: false
    end
  end
end
