class CreateUserSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_subjects do |t|
      t.integer :user_id
      t.integer :subject_id
      t.integer :status
      t.string :date_join
      t.string :datetime
      t.datetime :date_finish

      t.timestamps
    end
  end
end
