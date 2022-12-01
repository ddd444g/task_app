class Task < ApplicationRecord
  validates :title, presence: true
  validates :start, presence: true
  validates :stop, presence: true
end
