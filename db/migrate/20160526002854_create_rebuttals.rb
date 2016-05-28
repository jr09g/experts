class CreateRebuttals < ActiveRecord::Migration
  def change
    create_table :rebuttals do |t|
      t.string :thesis
      t.text :body

      t.timestamps null: false
    end
  end
end
