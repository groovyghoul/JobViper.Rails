class Job < ApplicationRecord
  has_many :contacts, dependent: :destroy
  has_many :events, dependent: :destroy

  validates :company, :title, :applied_date, presence: true
end
