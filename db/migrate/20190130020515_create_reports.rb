class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.text :content
      t.datetime :date_time

      t.timestamps
    end
  end
end
