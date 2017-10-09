class Detail < ApplicationRecord
  has_one :event, required: true
  # validates :event_id, presence: true
end
