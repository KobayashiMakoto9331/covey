class DateTask < ApplicationRecord
  has_many :scheduled_tasks

  validates :date, presence: true
end
