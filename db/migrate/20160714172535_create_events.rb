class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :writers
      t.date :date
      t.time :time
      t.string :venue
      t.string :performers
      t.string :price_range
      t.string :ticket_link
      t.string :video_link

      t.timestamps null: false
    end
  end
end
