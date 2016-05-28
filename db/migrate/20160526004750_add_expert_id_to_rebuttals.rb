class AddExpertIdToRebuttals < ActiveRecord::Migration
  def change
    add_column :rebuttals, :expert_id, :integer
    add_index :rebuttals, :expert_id
  end
end
