class AddColumnsLvl2CostlvlCostlvl2LifetimeDna < ActiveRecord::Migration[5.2]
  def change
	add_column :players, :level_cost, :float, :default => 100
	add_column :players, :level2, :integer, :default => 0
	add_column :players, :level2_cost, :float, :default => 2000
	add_column :players, :lifetime_dna, :float, :default => 0
  end
end
