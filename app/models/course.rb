class Course < ApplicationRecord
  has_many :users, through: :user_course
  has_many :subjects, through: :course_subject
  has_many :user_courses, dependent: :destroy
  has_many :course_subjects, dependent: :destroy

  validates :name, presence: true,
    length: {maximum: Settings.courses.name.max_length}
  validates :details, presence: true,
    length: {maximum: Settings.courses.details.max_length}

  scope :newest, ->{order created_at: :DESC}
  enum status: {open: 0, ready: 1, close: 2}
end
