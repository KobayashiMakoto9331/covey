class ScheduledTask < ApplicationRecord
  belongs_to :date_task

  validates :title, presence: true
  validates :priority, presence: true
  validates :status, presence: true
  validates :registration_date, presence: true
end
