class AddExpertIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :expert_id, :integer
    add_index :topics, :expert_id
  end
end
