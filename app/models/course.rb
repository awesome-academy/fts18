class Course < ApplicationRecord
   has_many :user_courses, dependent: :destroy
end
