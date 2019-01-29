class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :detail
      t.integer :times
      t.integer :status

      t.timestamps
    end
  end
end
