class CourseSubject < ApplicationRecord
  belongs_to :course
  belongs_to :subject

  validates :order, presence: true

  enum status: {open: 0, ready: 1, close: 2}
end
