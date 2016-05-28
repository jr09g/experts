class AddTopicIdToRebuttals < ActiveRecord::Migration
  def change
    add_column :rebuttals, :topic_id, :integer
    add_index :rebuttals, :topic_id
  end
end
