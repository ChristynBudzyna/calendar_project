class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :writers
      t.string :venue
      t.string :performers
      t.text :description
      t.string :price_range
      t.string :ticket_link
      t.string :video_link
      t.boolean :approved?, default: false

      t.timestamps null: false
    end
  end
end
