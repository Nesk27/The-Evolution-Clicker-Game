class AddColumnLevel3CostLevel2 < ActiveRecord::Migration[5.2]
  def change
	add_column :players, :level3, :integer, :default => 0
	add_column :players, :level3_cost, :float, :default => 5000
  end
end
