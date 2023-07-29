class DateTask < ApplicationRecord
  validates :date, presence: true
end
