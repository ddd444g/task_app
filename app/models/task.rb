class Task < ApplicationRecord
  validates :title, presence: true
  validates :start, presence: true
  validates :stop, presence: true

  # 日付逆転を阻止
  validate :start_stop

  def start_stop
    return false if start.blank? || stop.blank?
    errors.add(:stop,"は開始日より後に設定してください") unless 
    self.start < self.stop 
  end
end
