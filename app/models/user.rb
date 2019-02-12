class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :courses, through: :user_course
  has_many :subjects, through: :user_subject
  has_many :user_courses, dependent: :destroy
  has_many :user_subjects, dependent: :destroy

  validates :name, presence: true,
    length: {maximum: Settings.user.name.max_length}

  before_save{email.downcase!}

  enum role: {user: 0, admin: 1}
  scope :newest, ->{order created_at: :DESC}
end
