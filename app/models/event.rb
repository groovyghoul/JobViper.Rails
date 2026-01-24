class Event < ApplicationRecord
  belongs_to :job
  validates :event_type, :event_date, presence: true
end
