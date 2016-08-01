class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :start_time
      t.date :date
      t.references :event

      t.timestamps null: false
    end
  end
end
