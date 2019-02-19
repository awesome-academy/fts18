class CreateUserCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_courses do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :status
      t.string :date_join
      t.string :datetime
      t.datetime :date_finish

      t.timestamps
    end
  end
end
