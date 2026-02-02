class Attachment < ApplicationRecord
  belongs_to :job
  has_one_attached :file

  CATEGORIES = [ "Resume", "Job Posting", "Cover Letter", "Other" ]

  validates :category, presence: true, inclusion: { in: CATEGORIES }

  # TODO: learn more about how this works
  # validates :file, presence: true, on: :create
  validate :file_presence

  private

  def file_presence
    errors.add(:file, "must be attached") unless file.attached?
  end
end
