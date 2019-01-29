class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :date_start, presence: true
  validates :date_finish, presence: true

  before_create :set_day

  enum status: {open: 0, ready: 1, close: 2}

  def set_day
    self.date_start = Time.current.in_time_zone(Settings.time.time_zone)
    self.date_finish = date_start + Settings.time.in_time.days
  end
end
