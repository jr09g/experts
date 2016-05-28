class AddExpertIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :expert_id, :integer
    add_index :articles, :expert_id
  end
end
