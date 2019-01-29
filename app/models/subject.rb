class Subject < ApplicationRecord
  has_many :courses, through: :course_subject
  has_many :users, through: :user_subject
  has_many :users_course, dependent: :destroy
  has_many :course_subjects, dependent: :destroy

  validates :name, presence: true,
    length: {maximum: Settings.subjects.name.max_length}
  validates :details, presence: true,
    length: {maximum: Settings.subjects.details.max_length}

  scope :newest, ->{order created_at: :DESC}
  enum status: {open: 0, ready: 1, close: 2}
end
