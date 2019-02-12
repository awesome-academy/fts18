class CreateUserSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_subjects do |t|
      t.integer :user_id
      t.integer :subject_id
      t.datetime :date_start
      t.datetime :date_finish
      t.integer :status

      t.timestamps
    end
  end
end
