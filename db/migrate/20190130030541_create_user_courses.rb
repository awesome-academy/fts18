class CreateUserCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_courses do |t|
      t.integer :user_id
      t.integer :course_id
      t.datetime :date_start
      t.datetime :date_finish
      t.integer :status

      t.timestamps
    end
  end
end