class AddColumnLevel610CostLevel610 < ActiveRecord::Migration[5.2]
  def change
		add_column :players, :level6, :integer, :default => 0
		add_column :players, :level6_cost, :float, :default => 70000
		add_column :players, :level7, :integer, :default => 0
		add_column :players, :level7_cost, :float, :default => 100000
		add_column :players, :level8, :integer, :default => 0
		add_column :players, :level8_cost, :float, :default => 150000
		add_column :players, :level9, :integer, :default => 0
		add_column :players, :level9_cost, :float, :default => 1000000
		add_column :players, :level10, :integer, :default => 0
		add_column :players, :level10_cost, :float, :default => 10000000  
	end
end
