class Job < ApplicationRecord
  has_many :contacts, dependent: :destroy
  has_many :results, dependent: :destroy

  validates :company, :title, :applied_date, presence: true
end
