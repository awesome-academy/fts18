class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :details
      t.integer :times
      t.integer :status

      t.timestamps
    end
  end
end
