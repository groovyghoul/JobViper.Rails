class Job < ApplicationRecord
  has_many :attachments, dependent: :destroy
  # TODO: learn more about this
  # allows us to save attachments directly through the job form
  accepts_nested_attributes_for :attachments, allow_destroy: true, reject_if: :all_blank

  has_many :contacts, dependent: :destroy
  has_many :events, dependent: :destroy

  validates :company, :title, :applied_date, presence: true
end
