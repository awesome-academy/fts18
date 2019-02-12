class Report < ApplicationRecord
  belongs_to :user_course
  belongs_to :user_subject

  validates :content, presence: true
  validates :date_time, presence: true

  before_create :set_day

  scope :newest, ->{order created_at: :DESC}

  def set_day
    self.date_time = Time.current.in_time_zone(Settings.time.time_zone)
  end
end
