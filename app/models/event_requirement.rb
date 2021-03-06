class EventRequirement < ApplicationRecord
  belongs_to :requirement
  belongs_to :event

  delegate :name, :description, to: :requirement, allow_nil: true

  validates_presence_of :deadline
end
